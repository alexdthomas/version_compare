#as mentioned in lab meeting 8/26/2013
#can write script to compare two versions of a mapping file

mapFile.old<-read.delim("C:/Users/asus4/Documents/EarthMicrobiomeProject/QIIME_metadata_download/Pfister_Intertidal_microbe_16s/meta_analysis_tmpbVfzhaqUQFgNUDnYWHvM_map.txt", quote="", stringsAsFactors=FALSE)

#commit to git
#fix issue with titles
unique(mapFile.old[,"TITLE"])

#make new version to fix issue
mapFile.new<-mapFile.old
sort(mapFile.new[,"TITLE"])
mapFile.new[,"TITLE"]<-"Intertidal microbes 16s for 2009 and 2010"
unique(mapFile.new[,"TITLE"])

#compare old and new versions

#single function solution, not very detailed output
all.equal(mapFile.old, mapFile.new)
mapFile.old[,21]

#very verbose
mapFile.old==mapFile.new
#note NA values are not equal, return NA, which may also be helpful

#find row and columns where two files do not match
which(!mapFile.old==mapFile.new, arr.ind=TRUE)
#but this only returns that changed values

#can bind the old nad new versions together to compare side by side
cbind(mapFile.old[which(!mapFile.old==mapFile.new, arr.ind=TRUE)],
			mapFile.new[which(!mapFile.old==mapFile.new, arr.ind=TRUE)])