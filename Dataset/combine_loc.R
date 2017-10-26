setwd("F:/Github/Analisis-Ambulance/Dataset/");

library(dplyr);

loc_puskesmas = read.csv("app_kesehatan_puskesmas.csv",stringsAsFactors=FALSE);
loc_rsumum = read.csv("app_kesehatan_rs_khusus.csv",stringsAsFactors=FALSE);
loc_rskhusus = read.csv("app_kesehatan_rs_umum.csv",stringsAsFactors=FALSE);

loc_puskesmas2 = loc_puskesmas[,c("NAMA_PUSKESMAS","WILAYAH","KECAMATAN","LAT","LNG")];
loc_rsumum2 = loc_rsumum[,c("nama","kota","kecamatan","lat","lng")];
loc_rskhusus2 = loc_rskhusus[,c("nama","kota","kecamatan","lat","lng")];

colnames(loc_puskesmas2)=c("Nama","Wilayah","Kecamatan","Lat","Lng");
colnames(loc_rsumum2)=c("Nama","Wilayah","Kecamatan","Lat","Lng");
colnames(loc_rskhusus2)=c("Nama","Wilayah","Kecamatan","Lat","Lng");

loc_puskesmas2$Tipe="Puskesmas";
loc_rsumum2$Tipe="RS Umum";
loc_rskhusus2$Tipe="RS Khusus";

loc_rs = rbind(loc_puskesmas2,loc_rsumum2,loc_rskhusus2);

write.csv(loc_rs,"loc_puskesmas_rsumum_rskhusus.csv",row.names=FALSE);


