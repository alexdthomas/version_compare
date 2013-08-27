#as mentioned in lab meeting 8/26/2013
#can write script to compare two versions of a mapping file

mapFile.old<-read.delim("C:/Users/asus4/Documents/EarthMicrobiomeProject/QIIME_metadata_download/Pfister_Intertidal_microbe_16s/meta_analysis_tmpbVfzhaqUQFgNUDnYWHvM_map.txt", quote="", stringsAsFactors=FALSE)

#commit to git
#fix issue with titles
mapFile.old[,"TITLE"]