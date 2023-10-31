# instalando tidyverse
install.packages("tidyverse")
library(tidyverse)
library(lubridate)

# alguns tipos
today()
now()

# convertendo a partir de strings
ymd("2023/10/31")
mdy("October 31th, 2023")
dmy("31-Oct-2023")

ymd(20231031)
 
#criando componentes data-hora
ymd_hms("2023-10-31 07:53:10")

# convertendo em data
as_date(now())
