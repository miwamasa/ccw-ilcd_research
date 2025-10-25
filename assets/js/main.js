/**
 * 環境情報サプライチェーンデータ連携 - インタラクティブガイド
 * メインJavaScriptファイル
 */

// グローバル状態管理
const AppState = {
    currentSection: 'overview',
    terminology: null,
    sampleBOM: null
};

// 初期化
document.addEventListener('DOMContentLoaded', async function() {
    console.log('アプリケーション初期化中...');
    await loadData();
    setupEventListeners();
    showSection('overview');
    console.log('初期化完了！');
});

// データ読み込み
async function loadData() {
    try {
        const termResponse = await fetch('assets/data/terminology.json');
        AppState.terminology = await termResponse.json();

        const bomResponse = await fetch('assets/data/sample_bom.json');
        AppState.sampleBOM = await bomResponse.json();

        console.log('データ読み込み完了');
    } catch (error) {
        console.error('データ読み込みエラー:', error);
    }
}

// イベントリスナー設定
function setupEventListeners() {
    document.querySelectorAll('nav a').forEach(link => {
        link.addEventListener('click', function(e) {
            e.preventDefault();
            const sectionId = this.getAttribute('href').substring(1);
            showSection(sectionId);
            updateActiveNav(this);
        });
    });
}

// セクション表示
function showSection(sectionId) {
    document.querySelectorAll('main > section').forEach(section => {
        section.style.display = 'none';
    });

    const targetSection = document.getElementById(sectionId);
    if (targetSection) {
        targetSection.style.display = 'block';
        AppState.currentSection = sectionId;
        targetSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
        initializeSection(sectionId);
    }
}

function initializeSection(sectionId) {
    if (sectionId === 'glossary' && AppState.terminology) {
        renderGlossary();
    } else if (sectionId === 'simulator' && AppState.sampleBOM) {
        initSimulator();
    }
}

// ナビゲーション更新
function updateActiveNav(activeLink) {
    document.querySelectorAll('nav a').forEach(link => {
        link.classList.remove('active');
    });
    activeLink.classList.add('active');
}

// 用語集レンダリング
function renderGlossary() {
    const glossaryGrid = document.querySelector('.glossary-grid');
    if (!glossaryGrid || glossaryGrid.children.length > 0) return;

    AppState.terminology.terms.forEach(term => {
        const card = document.createElement('div');
        card.className = 'term-card';
        card.innerHTML = `
            <div class="term-title">${term.term} - ${term.ja}</div>
            <div class="term-full">${term.fullName}</div>
            <div class="term-def">${term.definition}</div>
            <span class="badge badge-info">${term.category}</span>
        `;
        glossaryGrid.appendChild(card);
    });
}

// シミュレーター初期化
function initSimulator() {
    const productSelect = document.getElementById('product-select');
    if (productSelect && productSelect.options.length === 0) {
        const option = document.createElement('option');
        option.value = AppState.sampleBOM.product.id;
        option.textContent = AppState.sampleBOM.product.name;
        productSelect.appendChild(option);
    }
}

// シミュレーション実行
function runSimulation() {
    const results = {
        carbonFootprint: AppState.sampleBOM.summary.totalCarbonFootprint,
        energy: AppState.sampleBOM.summary.totalEmbodiedEnergy,
        water: AppState.sampleBOM.summary.totalWaterConsumption,
        recyclability: AppState.sampleBOM.summary.recyclabilityRate
    };

    const resultDisplay = document.getElementById('simulation-results');
    if (resultDisplay) {
        resultDisplay.innerHTML = `
            <h4>計算結果</h4>
            <div class="metric">
                <span class="metric-label">カーボンフットプリント:</span>
                <span class="metric-value">${results.carbonFootprint.toFixed(1)} kg CO2-eq</span>
            </div>
            <div class="metric">
                <span class="metric-label">エンボディドエネルギー:</span>
                <span class="metric-value">${results.energy.toFixed(1)} MJ</span>
            </div>
            <div class="metric">
                <span class="metric-label">水消費量:</span>
                <span class="metric-value">${results.water.toFixed(0)} L</span>
            </div>
            <div class="metric">
                <span class="metric-label">リサイクル性:</span>
                <span class="metric-value">${results.recyclability.toFixed(1)}%</span>
            </div>
            <div class="progress-bar mt-lg">
                <div class="progress-fill" style="width: ${results.recyclability}%"></div>
            </div>
            <p class="mt-md text-center">
                <span class="badge badge-success">環境性能: 良好</span>
            </p>
        `;
    }
}
