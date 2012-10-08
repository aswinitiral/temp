class FileUpload
	
def self.read

  
        
  


  abc =  User.all 
      abc.each do |user|
    Dir.glob("db/usertable/#{user.id}/*.rb") do |my_text_file|
        path=my_text_file
        puts path
        File.open("db/keywords.rb",'r') do |search|
          search.each_line do |s|
      File.open(path,'r') do |file|
          file.each_line do |line|
          #key=s
         # puts key
            if line.include?(s)
                puts lines
            end
        end

        end
  end
      end
    end

  end
 
   end 
end


=begin
abc =  User.all 

    abc.each do |user|
      u_id=user.id
  results=[]
	Dir.glob("db/users/*.rb") do |my_text_file|
	 path=my_text_file
	
  	File.open(path,'r') do |file|
  		file.each_line do |line|
        if line.include? search
        puts line

  		  end	
      end
    end
	end
	






def self.search(search)
  if search
    where 'name LIKE ?', "%#{search}%"
  else
    scoped
  end
end

file.each {|line| puts line}
=end





