#load libs

library(tidyverse)
# library(rvest)
# library(janitor)

library(jsonlite)






url <- sprintf("https://navercomp.wisereport.co.kr/company/ajax/c1050001_data.aspx?flag=2&cmp_cd=%s&finGubun=IFRSL&frq=0&sDT=20210217&chartType=svg", "000660")


json <- fromJSON(url)
df <- json$JsonData
colnames(df) <- tolower(colnames(df))
write_csv(df, paste0('data/',Sys.Date(),'_000660','.csv'))    
 



       
