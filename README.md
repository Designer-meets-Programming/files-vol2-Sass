第2回：Sassをさすってみよう　٩(๑'ᴗ'๑)۶
===============

## Sass 準備

### ruby確認

```
$ ruby -v
ruby 1.9.3p374
```

#### Mac

Mac はOS標準でruby がインストールされていますが、何らかの理由で入っていない場合

MacPorts でインストール

```
$ sudo port install ruby
```

HomeBrew でインストール

```
$ brew install ruby
```

#### Windows

RubyInstaller でインストール

-RUBYFORGE

http://rubyforge.org/projects/rubyinstaller/

```
$ gem -v
1.8.25
```

### Sass/Compass インストール (Mac/Windows共通)

```
$ gem install sass

$ sass -v
Sass 3.2.12
```

```
$ gem install compass
$ compass -v
Compass 0.12.2
```

環境によってはsudo  が必要です

$ `sudo` gem install sass

## sublime text インストール

### ダウンロード

http://www.sublimetext.com/2

### Package Control インストール

https://sublime.wbond.net/installation#st2

｢View｣ → ｢Show Console｣
Sublime Text下段の入力コンソールに上記サイトのコマンドをコピー&ペースト

```
"Please restart Sublime Text to finish installation"
```

上記メッセージが表示されればOKです。Sublime Textを再起動します。

### Package Control 確認

「Ctrl + Shift + p」で「Command Palette」を表示
package とタイプして ｢Package Control: xxx｣ の表示が確認できればOK


### Sass/Compass をビルドするためのパッケージ(プラグイン)のインストール

「Ctrl + Shift + p」 → ｢Package Control: Install Package｣ を選択後、下記のパッケージをそれぞれインストール。

- Sass
- SASS Build
- SCSS
- SCSS Snippets
- Compass 

#### インストール済みのパッケージの確認

「Ctrl + Shift + p」 → ｢Package Control: List Package｣ 


## Sass 導入

CSSをそのままSASS(SCSS記法)でコンパイルする

既存の.CSSファイルの拡張子を.SCSSに変更し、Sublime Text で開く
 ｢Tools｣ → ｢Build System｣ → ｢Sass｣ 選択
 
 ｢Tools｣ → ｢Build｣でコンパイルされることを確認。
 xxx.scss であれば  xxx.css ファイルが生成されているはずです。
(SideBarでファイルを選択後、｢command + b｣でも可)

(表示例)
```
  overwrite /Users/xxxxxx/Desktop/sass/style.css 
[Finished in 0.7s]
```

※ SideBarが表示されていない場合
｢View｣ → ｢Side Bar｣ → ｢Show SideBar｣


## エラー集

### sass インストールでエラー

```
$ gem install sass
    ERROR:  Could not find a valid gem 'sass' (>= 0), here is why: Unable to download data from https://rubygems.org/ - SSL_connect returned=1 errno=0 state=SSLv3 read server certificate B: certificate verify failed (https://s3.amazonaws.com/production.s3.rubygems.org/latest_specs.4.8.gz)

$ gem source -a http://rubygems.org/
	https://rubygems.org is recommended for security over http://rubygems.org/

$ Do you want to add this insecure source? [yn]  y
	http://rubygems.org/ added to sources
```

### Sassビルド時エラー

```
[Errno 2] No such file or directory: 'sass'
```

rbenv 等でrubyをインストールした (一般的なフォルダにインストールされていない)場合などに発生

#### Mac

ターミナルを起動し、Rubyのコマンドがあるフォルダを探します

```
$ which ruby
/Users/xxxxxx/.rbenv/shims/ruby (表示例) 
```

上記例の場合
`
/Users/xxxxxx/.rbenv/shims/
`にruby のコマンドがあるので、そのフォルダをSublimeTextに設定します。

｢command + ,｣ で設定を開き下記を追加します

```
{
	## 追加
	"build_env":
	{
	    "PATH": "/Users/xxxxxx/.rbenv/shims/:$PATH"
	},
	##追加ここまで
	"font_size": 13,
	"ignored_packages":
	[
		"Vintage"
	]
}
```