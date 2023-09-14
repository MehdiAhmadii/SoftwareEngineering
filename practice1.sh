#Extract 16:17 from logfile.csv
cat logfile.csv  |grep 16:17

#Extract all log type except  INFO
cat logfile.csv |awk '{if ($1 = /16:17/ && $2 !="INFO") print }' FS=,

#The repetation number each class
cat logfile.csv |awk '{if ($1 = /16:17/ && $2 ="WARN") print}'  FS=, |awk '{arr[$3]++} END {for (b in arr) {print b, arr[b]}}'

#print independent class name
cat logfile.csv |awk '{print $3}' FS=, |sort |uniq

#for change onle
