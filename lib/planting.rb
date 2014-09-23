require 'csv'


#  data = "/Users/RickWalker/gSchoolWork/g3-assessment-week-16/data/metrics.tsv"
# keys = ['timestamp',	'container name',	'pH',	'nutrient solution level',	'temperature',	'water level']
# puts  CSV.read(data).map {|a| Hash[ keys.zip(a) ] }


# File.open("/Users/RickWalker/gSchoolWork/g3-assessment-week-16/data/metrics.tsv") do |f|
#   f.each_line do |tsv|
#     tsv.chomp!
#     puts tsv.scan(/(\s\|\d+)/)
#   end
# end

File.open("/Users/RickWalker/gSchoolWork/g3-assessment-week-16/data/metrics.tsv").each do |record|
  record.split("\t").map do |field|
     field.chomp!
   puts field



  # do something here with each field
     end
end

