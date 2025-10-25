# 🚀 クイックスタートガイド

環境情報のサプライチェーンデータ連携プロジェクトへようこそ！

このガイドでは、Claude Codeを使用してプロジェクトを始める方法を説明します。

## 📦 必要なファイル

このディレクトリには以下のファイルが含まれています：

1. **instructions.md** - Claude Code向けの詳細な開発指示書（最重要）
2. **README.md** - プロジェクト概要
3. **setup_project.sh** - プロジェクト構造の自動セットアップスクリプト
4. **QUICKSTART.md** - このファイル

## ⚡ 3つの開始方法

### 方法1: 自動セットアップを使用（推奨）

```bash
# 1. セットアップスクリプトを実行
bash setup_project.sh

# 2. プロジェクトディレクトリに移動
cd environmental-supply-chain-lca

# 3. Claude Codeを開始
# Claude Codeに以下のように指示：
# 「instructions.mdに従って、調査レポートとインタラクティブHTMLを作成してください」
```

### 方法2: 手動セットアップ

```bash
# 1. プロジェクトディレクトリを作成
mkdir -p environmental-supply-chain-lca/{docs/{diagrams,examples,references},tests,assets/{css,js,data}}

# 2. instructions.mdをコピー
cp instructions.md environmental-supply-chain-lca/

# 3. プロジェクトディレクトリに移動
cd environmental-supply-chain-lca

# 4. Claude Codeに指示
```

### 方法3: 既存のディレクトリで作業

```bash
# 現在のディレクトリでinstructions.mdを確認し、
# Claude Codeに直接指示することもできます
```

## 📋 Claude Codeへの基本的な指示例

### 完全な開発の場合
```
instructions.mdを読んで、環境情報のサプライチェーンデータ連携に関する
包括的な調査レポート（Report.md）とインタラクティブHTMLガイド
（interactive_guide.html）を作成してください。

以下の順序で進めてください：
1. 情報収集とDATA_SOURCES.mdの作成
2. Report.mdの執筆
3. XMLサンプルの作成
4. Mermaidダイアグラムの作成
5. interactive_guide.htmlの開発
6. テストケースの作成と実行
7. ドキュメントの完成

各ステップの進捗を報告してください。
```

### レポートのみの場合
```
instructions.mdのSection 2.1に従って、
環境情報のサプライチェーンデータ連携に関する調査レポート（Report.md）を
作成してください。

含めるべき内容：
- エグゼクティブサマリー
- 基礎概念の解説
- ILCD形式とISO/IEC 82474の詳細分析
- データ連携フローの説明
- XMLサンプルとMermaid図表
```

### インタラクティブHTMLのみの場合
```
instructions.mdのSection 2.2に従って、
教育的なインタラクティブHTMLガイド（interactive_guide.html）を作成してください。

必須機能：
- インタラクティブなデータフローチャート
- データ形式比較ツール
- 簡易シミュレーター
- 用語集
- 学習モジュールとクイズ
```

## 🎯 重要なポイント

### instructions.mdの構造

instructions.mdは以下のセクションで構成されています：

1. **Section 1**: 調査の範囲と目標
2. **Section 2**: 成果物の要件（レポート・HTML）
3. **Section 3**: 調査方法と情報源
4. **Section 4**: ドキュメントとテストの要件 ⭐
5. **Section 5**: プロジェクト構成
6. **Section 6**: 実装ガイドライン
7. **Section 7**: 品質基準
8. **Section 8**: Claude Codeへの実行指示

### テストケースとドキュメントについて ⭐

ユーザーの設定により、**テストケースとドキュメントの作成が重視**されています。

instructions.mdには以下が含まれています：

- **Section 4.1**: コード内ドキュメントの要件
- **Section 4.2**: 詳細なテストケースの仕様
  - 機能テスト
  - パフォーマンステスト
  - アクセシビリティテスト
  - ブラウザ互換性テスト

Claude Codeには必ずこれらのテストケースとドキュメントの作成も依頼してください。

## 📚 主要な成果物

### 1. 調査レポート（Report.md）
- 約15,000-20,000語
- 技術的に正確で包括的
- Mermaid図表を含む
- XMLサンプル付き

### 2. インタラクティブHTML（interactive_guide.html）
- レスポンシブデザイン
- WCAG 2.1 AA準拠
- D3.js/Mermaid.jsを使用
- 実践的なシミュレーター

### 3. テストとドキュメント
- interactive_guide_tests.md
- report_quality_checks.md
- TECHNICAL_NOTES.md
- DATA_SOURCES.md
- DEVELOPMENT_LOG.md

## ⏱️ 推定作業時間

- **完全な開発**: 40-60時間（2-3週間）
- **レポートのみ**: 20-30時間（1-1.5週間）
- **HTMLのみ**: 15-20時間（3-5日）

Claude Codeは複数のセッションに分けて作業できます。

## 🔍 品質チェック

完成時に以下を確認してください：

### レポート
- [ ] すべてのセクションが完成
- [ ] 技術的に正確
- [ ] 適切な引用
- [ ] 効果的な図表

### HTML
- [ ] すべての機能が動作
- [ ] ブラウザ互換性
- [ ] アクセシビリティ準拠
- [ ] パフォーマンス基準達成

### テスト・ドキュメント ⭐
- [ ] 包括的なテストケース
- [ ] すべてのテストが合格
- [ ] 完全な技術文書
- [ ] 詳細な開発ログ

## 🆘 トラブルシューティング

### Q: Claude Codeが途中で止まった
**A**: 「instructions.mdのSection X から続けてください」と指示してください。

### Q: XMLサンプルが複雑すぎる
**A**: 「より簡潔なXMLサンプルを作成してください」と指示してください。

### Q: HTMLが動作しない
**A**: ブラウザのコンソールでエラーを確認し、Claude Codeに報告してください。

### Q: テストケースが不足している
**A**: 「instructions.md Section 4.2に従って、より詳細なテストケースを作成してください」

## 📖 参考情報

### 主要トピック
- ILCD（International Reference Life Cycle Data System）
- ISO/IEC 82474（材料宣言）
- BOM/BOP（Bill of Materials/Process）
- LCA（Life Cycle Assessment）

### 重要なウェブサイト
- ILCD Data Network: https://eplca.jrc.ec.europa.eu/
- ISO/IEC 82474: https://www.iso.org/standard/85487.html
- openLCA: https://www.openlca.org/

## 🎓 学習パス

1. **初心者向け**
   - README.mdとinstructions.mdのSection 1-2を読む
   - 基礎概念を理解
   - レポートの基礎セクションから始める

2. **中級者向け**
   - 技術的詳細を深く理解
   - XMLサンプルを作成
   - インタラクティブHTMLの基本機能を実装

3. **上級者向け**
   - 完全な統合システムを設計
   - 高度なシミュレーター機能
   - パフォーマンス最適化

## 💡 ヒント

1. **段階的に進める**: すべてを一度に作成しようとせず、セクションごとに進めてください
2. **頻繁に保存**: 重要なマイルストーンで進捗を保存してください
3. **テストを重視**: 各機能を実装後、すぐにテストしてください ⭐
4. **ドキュメントを維持**: 開発中に技術ノートとログを更新してください ⭐
5. **質問する**: 不明な点はClaude Codeに質問してください

## 📞 次のステップ

1. **instructions.md**を一読する
2. **セットアップスクリプト**を実行するか、手動でディレクトリを作成
3. **Claude Code**を開始し、上記の指示例を参考に指示を出す
4. **進捗を確認**しながら、必要に応じて調整

---

## ✨ 成功への道

このプロジェクトを完了することで、以下が得られます：

- 環境情報管理の深い理解
- 実践的な実装スキル
- 高品質なドキュメント
- 再利用可能な教育コンテンツ

頑張ってください！ 🚀

---

**作成日**: 2025年10月25日  
**最終更新**: 2025年10月25日
