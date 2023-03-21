install.packages("gtfs2emis")
library(gtfs2emis)
gtfs_file <- system.file("extdata/irl_dub_gtfs.zip", package = "gtfs2emis")
gtfs <- gtfstools::read_gtfs(gtfs_file)
tp_model <- transport_model(gtfs_data = gtfs,spatial_resolution = 100,parallel = TRUE) 
fleet_file <- system.file("extdata/irl_dub_fleet.txt", package = "gtfs2emis")
fleet_df <- read.csv(fleet_file)
fleet_df


emi_list <- emission_model(tp_model = tp_model
                           , ef_model = "ef_europe_emep"
                           , fleet_data = fleet_df
                           , pollutant = c("NOx","PM10")
)
names(emi_list)
gtfs
names(emi_list)
df<-data.frame(ef_europe_emep_db)
library("writexl")
write_xlsx(df,"C:\\Users\\jenso\\Desktop\\project.xlsx")
