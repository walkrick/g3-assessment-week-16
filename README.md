# Hydroponics Tracker

## Background

You want to automate your indoor garden setup.  Being a crafty, nerdy type of person, 
you hooked up sensors to your plan containers, and you track metrics such as:

* pH levels
* Nutrient solution levels
* Temperature
* Water levels

Each container's data are written out to tab-delimited log files, in this format:

```
<timestamp>	<pH>	<nutrient solution level>	<temperature>	<water level>
```

You have 3 containers, and the plants grew the best in this order:

* Container 2 was the best
* Container 3 was the second best
* Container 1 was the worst

## Stories

Your mission is to be able to be able to tell what the optimal pH, nutrient solution level,
temperature and water level are.  To this you need to determine the average ph, 
nutrient solution level, temperature and water level for each file in the `data` directory.

Your program must, at a minimum:

* take a file path
* return some type of object (your own class, a hash, an array etc...) that has the
average ph, average nutrient solution level, average temperature and average water level for that file

## Check your work

The correct answers are:

**data/container-1.tsv**
pH  | nutrient solution level | temperature | water level
--- | ----------------------- | ----------- | -----------
5.0 | 40.25                   | 57.89       | 2.16

**data/container-2.tsv**
pH  | nutrient solution level | temperature | water level
--- | ----------------------- | ----------- | -----------
6.0 | 19.27                   | 73.52       | 3.79

**data/container-3.tsv**
pH   | nutrient solution level | temperature | water level
---- | ----------------------- | ----------- | -----------
7.06 | 10.31                   | 67.73       | 4.78

## References

* [:col_sep option for CSV](http://ruby-doc.org/stdlib-2.1.1/libdoc/csv/rdoc/CSV.html)
* [File.expand_path](http://www.ruby-doc.org/core-2.1.2/File.html#method-c-expand_path)