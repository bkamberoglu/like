$LOAD_PATH.unshift "#{File.dirname(__FILE__)}/lib"
require 'like_hooks'

Redmine::Plugin.register :like do
  name 'Like plugin'
  author 'Kohei Nomura / Bülent Kamberoğlu / Aykut Yurtmen '
  description 'This plug-in allows you to send the likes.'
  version '0.0.4'
  url 'https://github.com/bkamberoglu/like'
  author_url 'mailto:kohei_nom@yahoo.co.jp,bulent.kamberoglu@ulakhaberlesme.com.tr, aykut.yurtmen@ulakhaberlesme.com.tr'
  menu :application_menu, :like, { :controller => 'like', :action => 'index' }, :caption => :like_label_like, :if => Proc.new { User.current.logged? }
end