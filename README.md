CucumberTest
===================

BDD
针对项目做增删查的测试。
依赖项目：
> https://github.com/jungleli/bookmarks-Backend/
	

----------

环境准备
-------------

 1. ruby 
	-下载并安装 [Ruby2.2*](http://rubyinstaller.org/)
	-下载并安装 [Rubygems.zip](http://production.cf.rubygems.org/rubygems/)
	解压，进入解压的目录并进行安装: 
	>ruby setup.rb
 2. 安装包管理器bundler
  -使用gem进行安装
  >gem install bundler

运行项目
-------------
 1. clone
  >git clone https://github.com/jungleli/cucumberTest
  
 2. 安装gem依赖包
	```
	>cd <project-folder>
	>bundle instll
	```
 3. 运行测试
	```
	>cd <project-folder>
	>cucumber features/*

	```
	若要生成测试报告，则
	```
	>cd <project-folder>
	>cucumber --format html --out=features_report.html
	```
