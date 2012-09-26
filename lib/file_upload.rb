class FileUpload
	
def self.read
  
	search="java"


 abc=  User.all 

abc.each do |user|
  puts user.id
  puts user.name 
end

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
	


end  
end


=begin
def self.search(search)
  if search
    where 'name LIKE ?', "%#{search}%"
  else
    scoped
  end
end

file.each {|line| puts line}
=end





