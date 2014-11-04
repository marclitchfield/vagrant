# setup code
cd /home/vagrant/src/thedebate-web
npm install
bower install
mkdir node_modules/protractor/selenium
webdriver-manager update --out_dir=node_modules/protractor/selenium
