task :generate do

  write_file = ->(name, ph, nsl, temp, water) {
    date = Time.utc(2014, 1, 1)
    CSV.open("data/#{name}.tsv", "w", col_sep: "\t") do |csv|
      # ph
      # nutrient solution level
      # temperature
      # water level
      124.times do
        csv << [
          date += 6 * 60,
          ph.to_a.sample / 10.to_f,
          nsl.to_a.sample,
          temp.to_a.sample,
          water.to_a.sample / 10.to_f,
        ]
      end
    end
  }

  require 'csv'
  write_file.("container-1", 45..55, 10..70, 54..62, 12..30)
  write_file.("container-2", 55..65, 2..37, 65..82, 34..42)
  write_file.("container-3", 65..75, 1..20, 59..76, 42..53)
end