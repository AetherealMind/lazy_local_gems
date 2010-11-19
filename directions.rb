 puts "Hello this little script lets you install gem locally (and ignore system gems)"
 puts "while using Ruby! "
 puts " "
`cp gemrc ~/.gemrc`
` mkdir ~/dnld_dir && mkdir ~/.gem_repo; 
 cd ~/dnld_dir/	; 
 wget http://production.cf.rubygems.org/rubygems/rubygems-1.3.7.tgz ; 
 tar -xzvf rubygems-1.3.7.tgz; 
 cd rubygems-1.3.7/ ; `
 puts "Time to set GEM_HOME"
` echo "export GEM_HOME=$GEM_HOME:/home/$(whoami)/.gem_repo" >>  ~/.bashrc `
 puts "GEM_HOME => "+`echo $GEM_HOME`
` export GEM_HOME=$GEM_HOME:/home/$(whoami)/.gem_repo ;`
 puts "GEM_HOME => #{`echo $GEM_HOME`}  should be /home #{`$(whoami)`} +/.gem_repo"
`ruby ~/dnld_dir/rubygems-1.3.7/setup.rb  --prefix=~/.gem_repo  --verbose`
 puts "Cleaning..."
 `cd ~/ ; rm -rf ~/dnld_dir/ ; gem environment ; `
 puts "Hopefully if all went well that will look right"
 puts "  "
 puts "Test this out"
` gem install rake -r`
 puts "[note: to access the outside world of repos you will need to add the '-r / --remote' flag]"
 puts "you now have rake installed in a local repo"
 puts "see!"
 ` gem list `
 puts "            - enjoy   "
 puts "                Ramon <ramon.brooker[at]aetherealmind[dot]com>  "
 
 