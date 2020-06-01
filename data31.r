library(dplyr)
library(readxl)

setwd('/Users/zhiyilee/Downloads')
data <- read_excel('5月销售数据.xlsx')


for (i in 1:31){
    data_n <- subset(data, data$time==(43983-i))
    data_n <- data_n[!duplicated(data_n[,4]),]
    print(data_n)
}
