#!/bin/bash

# 環境情報サプライチェーンデータ連携プロジェクト セットアップスクリプト
# このスクリプトは、プロジェクトの基本構造を自動的に作成します

set -e

echo "=========================================="
echo "環境情報サプライチェーンデータ連携"
echo "プロジェクトセットアップ"
echo "=========================================="
echo ""

# プロジェクトディレクトリ名
PROJECT_DIR="environmental-supply-chain-lca"

# 既存のディレクトリをチェック
if [ -d "$PROJECT_DIR" ]; then
    echo "⚠️  警告: $PROJECT_DIR は既に存在します。"
    read -p "上書きしますか？ (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "❌ セットアップを中止しました。"
        exit 1
    fi
    echo "🗑️  既存のディレクトリを削除中..."
    rm -rf "$PROJECT_DIR"
fi

# ディレクトリ構造の作成
echo "📁 プロジェクト構造を作成中..."
mkdir -p "$PROJECT_DIR"/{docs/{diagrams,examples,references},tests,assets/{css,js,data}}

# READMEの作成
echo "📝 README.mdを作成中..."
cat > "$PROJECT_DIR/README.md" << 'EOF'
# 環境情報のサプライチェーンデータ連携プロジェクト

## 概要
このプロジェクトは、BOM/BOPからILCD形式を経由したLCA分析、
およびISO/IEC 82474との関係性について調査し、教育的なコンテンツを提供します。

## セットアップ完了
プロジェクト構造が正常に作成されました。

## 次のステップ
1. `instructions.md`を確認してください
2. Claude Codeを使用して成果物を生成してください

詳細は親ディレクトリのREADME.mdを参照してください。
EOF

# プレースホルダーファイルの作成
echo "📄 プレースホルダーファイルを作成中..."

# Report.md
cat > "$PROJECT_DIR/Report.md" << 'EOF'
# 環境情報のサプライチェーンデータ連携調査レポート

> このファイルは調査レポートのプレースホルダーです。
> instructions.mdに従って内容を記入してください。

## 目次

[Claude Codeによって生成されます]
EOF

# TECHNICAL_NOTES.md
cat > "$PROJECT_DIR/TECHNICAL_NOTES.md" << 'EOF'
# 技術ノート

## 実装の詳細

[開発中に記録]

## アーキテクチャの決定

[開発中に記録]

## 既知の制約

[開発中に記録]
EOF

# DATA_SOURCES.md
cat > "$PROJECT_DIR/DATA_SOURCES.md" << 'EOF'
# データソース

## 公式ドキュメント

- [ ] ILCD Handbook
- [ ] ISO/IEC 82474 仕様書
- [ ] ISO 14040/14044

## 学術文献

[調査中に追加]

## 取得日と引用方法

[調査中に記録]
EOF

# DEVELOPMENT_LOG.md
cat > "$PROJECT_DIR/DEVELOPMENT_LOG.md" << 'EOF'
# 開発ログ

## プロジェクト開始日
[記録してください]

## 主要なマイルストーン

### Phase 1: 情報収集
- [ ] 開始日:
- [ ] 完了日:
- [ ] 主な成果:

### Phase 2: レポート作成
- [ ] 開始日:
- [ ] 完了日:
- [ ] 主な成果:

### Phase 3: HTML開発
- [ ] 開始日:
- [ ] 完了日:
- [ ] 主な成果:

### Phase 4: テストとドキュメント
- [ ] 開始日:
- [ ] 完了日:
- [ ] 主な成果:

## 重要な決定事項

[開発中に記録]

## 問題と解決方法

[開発中に記録]
EOF

# テストファイルのプレースホルダー
cat > "$PROJECT_DIR/tests/interactive_guide_tests.md" << 'EOF'
# インタラクティブガイド テスト仕様

## 機能テスト

### TC-001: ページ読み込み
- **目的**: [記述してください]
- **手順**: [記述してください]
- **期待結果**: [記述してください]
- **結果**: [ ] 合格 [ ] 不合格

[instructions.mdのテンプレートに従って追加してください]
EOF

cat > "$PROJECT_DIR/tests/report_quality_checks.md" << 'EOF'
# レポート品質チェックリスト

## 構造チェック
- [ ] すべてのセクションが含まれている
- [ ] 見出しレベルが適切

## コンテンツチェック
- [ ] 各主張に引用がある
- [ ] 技術用語が定義されている

[instructions.mdのテンプレートに従って追加してください]
EOF

# アセットディレクトリのプレースホルダー
cat > "$PROJECT_DIR/assets/css/styles.css" << 'EOF'
/* スタイルシート
 * インタラクティブガイド用のスタイルを記述
 */

:root {
    /* CSS変数 */
    --primary-color: #2c3e50;
    --secondary-color: #3498db;
    --accent-color: #e74c3c;
    --text-color: #333;
    --bg-color: #fff;
}

/* グローバルスタイル */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color: var(--text-color);
    background-color: var(--bg-color);
    line-height: 1.6;
}

/* 追加のスタイルをここに記述 */
EOF

cat > "$PROJECT_DIR/assets/js/main.js" << 'EOF'
/**
 * メインJavaScriptファイル
 * インタラクティブガイドのコア機能
 */

'use strict';

// アプリケーションの初期化
document.addEventListener('DOMContentLoaded', function() {
    console.log('環境情報サプライチェーンガイド - 初期化中...');
    
    // 初期化処理をここに記述
    initializeApp();
});

/**
 * アプリケーションの初期化
 */
function initializeApp() {
    // 各モジュールの初期化
    console.log('アプリケーションが正常に初期化されました。');
}

// 追加の機能をここに記述
EOF

# サンプルデータファイル
cat > "$PROJECT_DIR/assets/data/terminology.json" << 'EOF'
{
  "terms": [
    {
      "term": "BOM",
      "fullName": "Bill of Materials",
      "definition": "製品を構成する部品や材料の詳細リスト",
      "category": "基礎"
    },
    {
      "term": "ILCD",
      "fullName": "International Reference Life Cycle Data System",
      "definition": "欧州委員会が開発したLCAデータ交換の国際標準",
      "category": "標準"
    },
    {
      "term": "ISO/IEC 82474",
      "fullName": "Material declaration standard",
      "definition": "材料宣言のための国際標準規格",
      "category": "標準"
    }
  ]
}
EOF

# インタラクティブHTMLのプレースホルダー
cat > "$PROJECT_DIR/interactive_guide.html" << 'EOF'
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="環境情報のサプライチェーンデータ連携に関するインタラクティブガイド">
    <title>環境情報サプライチェーンデータ連携 - インタラクティブガイド</title>
    <link rel="stylesheet" href="assets/css/styles.css">
</head>
<body>
    <header>
        <h1>環境情報サプライチェーンデータ連携</h1>
        <nav>
            <!-- ナビゲーションメニューをここに追加 -->
        </nav>
    </header>

    <main>
        <section id="overview">
            <h2>概要</h2>
            <p>このガイドは開発中です。instructions.mdに従って内容を追加してください。</p>
        </section>

        <!-- 追加のセクションをinstructions.mdに従って実装 -->
    </main>

    <footer>
        <p>&copy; 2025 環境情報サプライチェーンデータ連携プロジェクト</p>
    </footer>

    <script src="assets/js/main.js"></script>
</body>
</html>
EOF

# docsディレクトリのサンプルファイル
cat > "$PROJECT_DIR/docs/diagrams/data_flow.mmd" << 'EOF'
graph TB
    A[BOM/BOP データ] --> B[材料情報抽出]
    B --> C[ISO/IEC 82474<br/>材料宣言]
    C --> D[ILCD形式<br/>データ変換]
    D --> E[LCAツール]
    E --> F[環境影響評価]
    
    style A fill:#e1f5ff
    style C fill:#fff4e1
    style D fill:#ffe1f5
    style F fill:#e1ffe1
EOF

cat > "$PROJECT_DIR/docs/references/terminology.md" << 'EOF'
# 用語集

## A
- **LCA (Life Cycle Assessment)**: ライフサイクルアセスメント

## B
- **BOM (Bill of Materials)**: 部品表
- **BOP (Bill of Process)**: 工程表

## I
- **ILCD**: International Reference Life Cycle Data System
- **ISO/IEC 82474**: 材料宣言の国際標準

[instructions.mdに従って拡張してください]
EOF

# .gitignoreの作成（オプション）
cat > "$PROJECT_DIR/.gitignore" << 'EOF'
# OS
.DS_Store
Thumbs.db

# エディタ
.vscode/
.idea/
*.swp
*.swo
*~

# 一時ファイル
*.tmp
*.bak

# ログ
*.log

# カバレッジ
coverage/

# ビルド生成物
dist/
build/
EOF

echo "✅ プロジェクト構造の作成が完了しました！"
echo ""
echo "📊 作成されたディレクトリ構造:"
echo ""
tree -L 3 "$PROJECT_DIR" 2>/dev/null || find "$PROJECT_DIR" -type d | sed 's|[^/]*/| |g'
echo ""
echo "🎯 次のステップ:"
echo "1. cd $PROJECT_DIR"
echo "2. instructions.mdを確認"
echo "3. Claude Codeで開発を開始"
echo ""
echo "📚 重要なファイル:"
echo "  - instructions.md: 詳細な開発指示"
echo "  - README.md: プロジェクト概要"
echo "  - Report.md: 調査レポート（開発対象）"
echo "  - interactive_guide.html: インタラクティブガイド（開発対象）"
echo ""
echo "=========================================="
echo "セットアップ完了！ 🎉"
echo "=========================================="
