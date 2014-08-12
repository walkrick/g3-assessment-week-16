task :generate do
  require 'csv'

  config = {
    :container1 => { ph: 45..55, nsl: 10..70, temp: 54..62, water: 12..30 },
    :container2 => { ph: 55..65, nsl: 2..37, temp: 65..82, water: 34..42 },
    :container3 => { ph: 65..75, nsl: 1..20, temp: 59..76, water: 42..53 },
  }

  date = Time.utc(2014, 1, 1)
  CSV.open("data/metrics.tsv", "w", col_sep: "\t") do |csv|
    124.times do
      config.each do |container, ranges|
        csv << [
          date,
          container.to_s,
          ranges[:ph].to_a.sample / 10.to_f,
          ranges[:nsl].to_a.sample,
          ranges[:temp].to_a.sample,
          ranges[:water].to_a.sample / 10.to_f,
        ]
      end
      date += 6 * 60
    end
  end

end