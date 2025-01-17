# Redmine like plugin
This plugin allows you to send the like on Redmine. It is a very simple plugin, so please modify it freely.
It was forked from https://github.com/happy-se-life/like

# Updated on Redmine 5.0.2

## What's new
* Started accepting donations using Liberapay. The donate button is in the right sidebar.
* Add the number of likes received to the summary page #6 (Attention: need Migration)
<pre>
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
</pre>
* You can now view the person who liked it with a tooltip. #2
* Added support for Redmine version 5.0.2 or later. #1
* Added email notification settings (on or off).

## Features
* You can like issues, notes and wikis.
* e-mail notifications when someone likes you.
* View the number of likes received/sent each user on the summary page. 

## Screenshots

### Issues and notes
<img src="./assets/images/issue_page_ss.png" width="600px">

### Wiki
<img src="./assets/images/wiki_page_ss.png" width="600px">

### Tooltip of the person who liked it
<img src="./assets/images/like_tooltip_ss.png" width="600px">

### 6 types of icons
* To change the icon, you need to change ICON_DESIGN in models/like_constants.rb.

<img src="./assets/images/type_of_icons.png" width="305px">

### Display of total number of likes
<img src="./assets/images/summary_page.png" width="600px">

## Install

1. Move to plugins folder.

2. Put the code.
<pre>
git clone https://github.com/bkamberoglu/like
</pre>

3. Run migration.
<pre>
bundle exec rake redmine:plugins:migrate NAME=like RAILS_ENV=production
</pre>

4. Edit models/LikeConstants.rb to chose icon type.

5. Restart redmine.

## Uninstall

1. Move to plugins folder.

2. Rollback migration.
<pre>
bundle exec rake redmine:plugins:migrate NAME=like VERSION=0 RAILS_ENV=production
</pre>

3. Remove plugins folder.
<pre>
rm -rf like
</pre>

4. Restart redmine.

## Limitation
* Only supports English and Japanese.

## License
* MIT Lisense
