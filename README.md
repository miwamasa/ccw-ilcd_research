# 環境情報のサプライチェーンデータ連携プロジェクト

## 概要

このプロジェクトは、BOM/BOPからILCD形式を経由したLCA分析、およびISO/IEC 82474との関係性について調査し、教育的なコンテンツを提供します。

### 研究テーマ

「BOM/BOPを基盤とした環境情報のサプライチェーンデータ連携：ILCD形式によるLCA分析とISO/IEC 82474との関係性」

## 成果物

- **包括的な調査レポート** (`Report.md`) - サプライチェーン全体における環境情報データ連携に関する詳細な技術調査
- **インタラクティブHTMLガイド** (`interactive_guide.html`) - 視覚的で教育的な学習コンテンツ
- **技術文書とテストケース** - 実装詳細、データソース、開発ログ

## プロジェクト構成

```
ccw-ilcd_research/
├── README.md                          # プロジェクト概要（このファイル）
├── instructions.md                    # 詳細な指示書
├── Report.md                          # 主要調査レポート
├── interactive_guide.html             # インタラクティブHTMLガイド
├── TECHNICAL_NOTES.md                 # 技術文書
├── DATA_SOURCES.md                    # 情報源リスト
├── DEVELOPMENT_LOG.md                 # 開発ログ
├── docs/
│   ├── diagrams/                      # Mermaidダイアグラムのソース
│   │   ├── data_flow.mmd
│   │   ├── xml_structure.mmd
│   │   └── integration_architecture.mmd
│   ├── examples/                      # XMLサンプル
│   │   ├── ilcd_sample.xml
│   │   ├── iso82474_sample.xml
│   │   └── bom_sample.xml
│   └── references/                    # 参考資料
│       ├── standards_summary.md
│       └── terminology.md
├── tests/
│   ├── interactive_guide_tests.md     # HTMLテスト仕様
│   ├── report_quality_checks.md       # レポート品質チェック
│   └── validation_results.md          # 検証結果
└── assets/                            # HTMLで使用する素材
    ├── css/
    │   └── styles.css
    ├── js/
    │   ├── main.js
    │   ├── flowchart.js
    │   ├── simulator.js
    │   └── utils.js
    └── data/
        ├── sample_bom.json
        └── terminology.json
```

## 主要トピック

### 1. BOM/BOP (Bill of Materials/Bill of Process)
- 製品構成情報の標準化
- サプライチェーンにおける役割
- LCAデータソースとしての活用

### 2. ILCD形式 (International Reference Life Cycle Data System)
- 欧州委員会が開発したLCAデータ交換標準
- XML構造とデータモデル
- ISO 14040/14044との準拠関係

### 3. ISO/IEC 82474（旧IEC 62474）
- 材料宣言の国際標準
- XMLベースのデータ交換フォーマット
- 宣言可能物質リスト（DSL）

### 4. LCAツールとデータ連携
- SimaPro, openLCA, GaBi等の主要ツール
- データインポート・エクスポート機能
- 環境影響評価の実装

## 使い方

### 調査レポートの閲覧

```bash
# Markdownビューアで開く
cat Report.md
```

### インタラクティブガイドの使用

```bash
# ブラウザでHTMLファイルを開く
open interactive_guide.html  # macOS
xdg-open interactive_guide.html  # Linux
start interactive_guide.html  # Windows
```

または、お気に入りのブラウザで `interactive_guide.html` を直接開いてください。

## 技術スタック

### 調査レポート
- Markdown形式
- Mermaid記法（ダイアグラム）
- 標準化されたXMLサンプル

### インタラクティブHTML
- HTML5/CSS3/JavaScript (ES6+)
- D3.js（データ可視化、CDN経由）
- Mermaid.js（ダイアグラム、CDN経由）
- Prism.js（シンタックスハイライト、CDN経由）

## 品質基準

### レポート
- 技術的正確性: 95%以上
- すべての必須セクションの完成
- 適切な引用と参考文献
- 効果的な図表の使用

### インタラクティブHTML
- WCAG 2.1 AA準拠
- 主要4ブラウザ（Chrome, Firefox, Safari, Edge）対応
- レスポンシブデザイン（デスクトップ/タブレット/モバイル）
- Lighthouse Score > 90

## 開発ログ

開発プロセスの詳細は `DEVELOPMENT_LOG.md` を参照してください。

## 参考資料

主要な情報源とリソースは `DATA_SOURCES.md` を参照してください。

## ライセンス

このプロジェクトは教育・研究目的で作成されています。
使用している標準規格の引用ガイドラインに従い、すべての引用元を明記しています。

## 貢献

詳細な指示書は `instructions.md` を参照してください。

## 連絡先

プロジェクトに関する質問や提案は、Issueを作成してください。

---

**作成日**: 2025-10-25
**バージョン**: 1.0
