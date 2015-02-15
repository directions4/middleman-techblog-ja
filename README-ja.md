# Middleman-TechBlog-ja

## このプロジェクトについて

[Middleman-TechBlog-ja](https://github.com/directions4/middleman-techblog-ja) は、日本語のブログを短時間で立ち上げるためのMiddlemanプロジェクト・テンプレートです。特に、IT技術系のブログを書くのに向いています。

Middleman を使ったことがなくても特に困ることはありません。Ruby が動作する環境であれば、インストール・設定はとても簡単です。

## Middlemanについて

Middleman はモダンな web 開発のショートカットやツールを 採用した静的サイトジェネレータです。詳しくは[こちら](https://middlemanapp.com/jp/)をごらんください。

## 同梱物

* [Slim](http://slim-lang.com/):
  軽量なテンプレートエンジン
* [Coffeescript](http://coffeescript.org):
  JavaScriptコードを生成するためのコンパクトな言語
* [Sass](http://sass-lang.com):
  パワフルなスタイルシート言語
* [Bourbon](http://bourbon.io):
  Sassのミックスイン・ライブラリー
* [Neat](http://neat.bourbon.io):
  Bourbonと組み合わせて使う、グリッドライブラリー
* [Bitters](http://bitters.bourbon.io):
  Bourbonのひな形集
* [Middleman Live Reload](https://github.com/middleman/middleman-livereload):
  オートリローダー。ファイルを保存すると勝手にブラウザをリロードしてくれます
* [Middleman Deploy](https://github.com/karlfreeman/middleman-deploy):
  自動デプロイツール。 rsync, ftp, sftp, git でデプロイ可能です

## 使い方

適当なディレクトリで、本プロジェクトを git clone します。

```
git clone git@github.com:directions4/middleman-techblog-ja.git your-blog
cd your-blog
```

bundlerで、必要なライブラリ等をインストールします。

```
bundle install --path=vendor/bundle
```

サーバーを起動します。これでhttp://localhost:4567 にアクセスするとサンプルのページが見られるはずです。

```
bundle exec middleman
```

## ブログの設定

ブログの設定ファイルは `data/app.yml` です。あなたのブログのタイトルなどを設定してください。

### デプロイ

deploy コマンドで、ビルドとデプロイを行います。デフォルトはSFTPです。

```
bundle exec middleman deploy
```
ビルド時は、ページ間のリンク、画像リンク、各種アセットはすべて相対パスに変換されます。

## ディレクトリ構成

スタイルシート、フォント、JavaScript ファイルは、`source/assets/` に入れてください。

## ご協力

何か問題があれば、issue を作ってください。
[GitHub Issue](https://github.com/directions4/middleman-techblog-ja/issues).

プルリクはこちらから。
[Pull Requests](https://github.com/directions4/middleman-techblog-ja/pulls)

## ライセンス

 [MITライセンスです](LICENSE)。