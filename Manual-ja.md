# Middleman-TechBlog-ja マニュアル

## Middleman-TechBlog-ja について

[Middleman-TechBlog-ja](https://github.com/directions4/middleman-techblog-ja) は、日本語のブログを短時間で立ち上げるためのMiddlemanプロジェクト・テンプレートです。特に、IT技術系のブログを書くのに向いています。

Middleman を使ったことがなくても特に困ることはありません。Ruby が動作する環境であれば、インストール・設定はとても簡単です。

### 特徴

* 短時間で日本語のブログを立ち上げられます
* Middleman に詳しくなくても大丈夫です
* 今時な爆速フロントエンド開発環境（Sass, CoffeeScript自動コンパイル、ブラウザ自動リロード等）がセットアップされています

### こんな方に向いてます

* WordPressや、はてなは面倒くさい
* CMSを動かすのがツライしょぼいサーバー、Amazon S3、Github Pageなどお金のかからない環境でホストしたい
* Middleman を使ってみたいが、何かよく分からない
* コードはシンタックスハイライトでキレイに表示されて欲しい
* ブログを書くのに、なるべくキーボードから手を離したくない
* 自分の文章はテキストファイルで置いておきたい。バージョン管理もしたい
* 今時のフロントエンド開発環境を手間なく使ってみたい

### その他

* コメント機能は[Disqus](https://disqus.com/)を利用します
* 検索機能はしょぼいですが、実用的です！

## インストール

インストールはとてもカンタンです。まずは、あなたのマシンでRubyやGemが動くことを確認してください。

Bundlerがインストールされていなければ、このようにインストールしてください。


```
sudo gem install bundler
```


適当なディレクトリで、本プロジェクトをリポジトリからコピーします。


```
git clone git@github.com:directions4/middleman-techblog-ja.git your-blog-name
cd your-blog-name
```

bundlerで、必要なライブラリ等をインストールします。

```
bundle install --path=vendor/bundle
```

サーバーを起動します。

```
bundle exec middleman
```

これでhttp://localhost:4567 にアクセスするとサンプルのページが見られるはずです。


## ブログの設定

一般的なブログの設定は、`data/app.yml` で行います。内容については、特に説明の必要はないでしょう。ブログのタイトルやURLを設定してください。

下記は、実際のファイルの中身です。

```
site_title: '俺のブログ'
site_subtitle: '俺のブログは100%俺のブログです'
site_description: 俺のブログは、俺による俺のためだけの100%俺的なことだけで構成されたブログです。
site_url: 'http://blog.example.com'
site_author: 'ヤマダタロウ'
```
### Google Analytics の設定

Google Analytics を利用する場合、下記のようにあなたのトラッキングIDを記入してください。

```
ga_tracking_id: UA-XXXXXXX-X
```

### コメント機能の設定

コメント機能は、[Disqus](https://disqus.com/)を利用します。コメント機能を利用する場合、Discusのアカウントを作り、とショートネームを入手してください。Disqus のショートネームを下記のように設定すると、コメント機能を利用可能です。

```
disqus_shortname: your-shortname
```

空白にすると、コメント用のコードは出力しません。


ここで設定された値、例えばブログのタイトルは、テンプレートから、`data.app.site_title` として参照可能です。

## 記事について

記事は、`source/posts` 以下に、次のようなファイル名で保存してください。

`[year]-[month]-[day]-[title].html.md`

上記のファイルネームをつけると、Middleman は自動的に、`/[year]/[month]/[day]/[title].html` という URI でコンパイルします。

### 記事ファイルの内容

記事は、基本的には [Frontmatter](https://middlemanapp.com/jp/basics/frontmatter/) + Markdown で記述します。

具体的には、以下のような内容になります。

```
---
title: デプロイについて
date: 2014-01-10
tags: middleman, deploy
---
Middleman は静的サイトジェネレーターです。外部にコンテンツを公開するには、Webサーバーが動いているシステムにデプロイする必要があります。

Middleman-TechBlog-ja は、Github Page の他、git, rsync, ftp, sftp によるデプロイをサポートしています。

```

上下`---` で区切られた部分が、Frontmatter です。この部分に記事のタイトルや日付、タグなどのメタ情報を記述します。

記事内容は、Markdown で記述します。Middleman-TechBlog-ja は、Redcarpet を採用しています。

ショートカットとして, ```middleman article TITLE``` を実行できます。 Middleman は新しい記事を正しいファイル名で正しい場所に作ります。このコマンドには ```--date```, ```--lang``` や ```--blog``` オプションを渡すことができます。

## デザインのカスタマイズ

### スタイルシートのカスタマイズ

Middleman-Blog-jaのスタイルシートは、Bourbon / Neat を利用しています。デザインのカスタマイズを行うには、`source/assets/css`
以下のscssファイル群を編集してください。

ファイルツリーはこのようになっています。

```
├── _normalize.scss
├── _variables.scss
├── all.css.scss
├── base
│   ├── _base.scss
│   ├── _buttons.scss
│   ├── _forms.scss
│   ├── _grid-settings.scss
│   ├── _lists.scss
│   ├── _tables.scss
│   ├── _typography.scss
│   ├── _variables.scss
│   └── extends
│       ├── _button.scss
│       ├── _clearfix.scss
│       ├── _errors.scss
│       ├── _flashes.scss
│       └── _hide-text.scss
└── partials
    ├── _article.scss
    ├── _footer.scss
    ├── _grids.scss
    ├── _header.scss
    ├── _highlight.scss
    ├── _index.scss
    ├── _meta.scss
    └── _sidebar.scss

```

読み込むscssファイルは、`all.css.scss` で設定してください。

サイトの色、文字の大きさなどは、`_variables.scss` で設定可能です。

`base/` 以下は、[Bitters](http://bitters.bourbon.io/)です。特に編集する必要はないでしょう。

### HTMLテンプレートのカスタマイズ

テンプレートエンジンに [Slim](http://slim-lang.com/) を採用しています。

テンプレートは、`source/layouts` 以下です。また、インデックス・ページに関しては、`source/index.html.slim`, `source/calendar.html.slim`, `source/tag.html.slim`を編集してください。

## コンテンツのデプロイについて

Middleman は静的サイトジェネレーターです。外部にコンテンツを公開するには、Webサーバーが動いているシステムにデプロイする必要があります。

Github Page の他、git, rsync, ftp, sftp によるデプロイをサポートしています。

デフォルトでは sftpで、設定されたサーバーにデプロイします。`data/app.yml` に、サーバーの情報を設定してください。

```
deploy_host: example.com # ホスト名
deploy_port: 22 # ポート番号
deploy_path: /home/foobar/public_html # パス
deploy_user: your_name # ユーザー名
```

deploy コマンドで、ビルド、デプロイします。デフォルトではSFTPを使います。

```
bundle exec middleman deploy
```

### sftp以外でのデプロイ

[middleman-deploy](https://github.com/karlfreeman/middleman-deploy) を参照してください。



