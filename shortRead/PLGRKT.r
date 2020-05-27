
pdf(file="EXON2.pdf",width=50)
dir(".", pattern = ".E2position", full.names = TRUE, ignore.case = TRUE)->Files
par(mgp=c(7,0.1,0),mar=c(14,4,6,2))
for(i in Files){
read.table(file=i,header=FALSE,sep="\t")->MB
Bar=transform(MB, A = MB$V8, C=MB$V10, G=MB$V12,T=MB$V14)
barplot(as.matrix(t(Bar[,15:18])),col=c("red","blue","yellow","green"),names.arg=Bar$V1,las=2,main=i,space=0.2)
legend("topright", legend=c("A","C","G","T"), fill=c("red","blue","yellow","green"))
}
dev.off()   

pdf(file="EXON3.pdf",width=50)
dir(".", pattern = ".E3position", full.names = TRUE, ignore.case = TRUE)->Files
par(mgp=c(7,0.1,0),mar=c(14,4,6,2))
for(i in Files){
read.table(file=i,header=FALSE,sep="\t")->MB
Bar=transform(MB, A = MB$V8, C=MB$V10, G=MB$V12,T=MB$V14)
barplot(as.matrix(t(Bar[,15:18])),col=c("red","blue","yellow","green"),names.arg=Bar$V1,las=2,main=i,space=0.2)
legend("topright", legend=c("A","C","G","T"), fill=c("red","blue","yellow","green"))
}
dev.off()   

pdf(file="EXON4.pdf",width=50)
dir(".", pattern = ".E4position", full.names = TRUE, ignore.case = TRUE)->Files
par(mgp=c(7,0.1,0),mar=c(14,4,6,2))
for(i in Files){
read.table(file=i,header=FALSE,sep="\t")->MB
Bar=transform(MB, A = MB$V8, C=MB$V10, G=MB$V12,T=MB$V14)
barplot(as.matrix(t(Bar[,15:18])),col=c("red","blue","yellow","green"),names.arg=Bar$V1,las=2,main=i,space=0.2)
legend("topright", legend=c("A","C","G","T"), fill=c("red","blue","yellow","green"))
}
dev.off()   

