# ==============================================================================
# パス
# ==============================================================================
http_path       = "/"
css_dir         = "./css/"
sass_dir        = "./sass/"
images_dir      = "./img/"
withpro_lib_dir = "/Users/kibayashishouko/Dropbox/share/withprojects/lib"
ruby_module_dir = "#{withpro_lib_dir}/compass/ruby_module"
# プロジェクト外部にあるCSSのパス | カンマ区切りで複数渡せます
#additional_import_paths = [
#	"/Users/yokotakenji/Dropbox/share/withprojects/lib/sass",
#	"/Users/yokotakenji/Dropbox/share/withprojects/lib/compass"
#]

# ==============================================================================
# モジュール
# ==============================================================================
# compass-growl
# https://rubygems.org/gems/compass-growl
# require "compass-growl"


# ==============================================================================
# 出力設定
# ==============================================================================
# compassの関数で利用するパスの出力設定 | trueで相対パス、falseで絶対パス
 relative_assets = true
# ------------------------------------------------------------------------------
 environment = :development # 作業時
# environment = :production  # 納品時
# ------------------------------------------------------------------------------
 cache = false # .sass-cacheを生成する


# ==============================================================================
# 
# ==============================================================================
preferred_syntax = :scss
output_style = (environment == :production) ? :compressed : :expanded
line_comments = (environment == :production) ? :false : :true