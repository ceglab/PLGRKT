# bam-read count 
# EXON2 
for i in {27638410..27639194..1};do echo $i >>b;done
awk '{print $1"\t"$1}' b|sed 's/^/Z\t/g' >E2.bed
for i in `cat PLGRKT.bamlist`; do  bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 $i -l E2.bed> $i.E2;done
for j in *E2;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.E2count;done
for i in *E2count;do sed -i "s/^/$i\t/g" $i ; done
cut -f2 E2.bed > e2.bed
for i in `cat e2.bed`;do cat *E2count|awk -v val=$i '$3==val{print $0}' >> $i.E2position;done
for i in `ls -1 *.E2position`;do sed -i 's/\./\t/' $i;done

#EXON 3
for i in {27638091..27638188..1};do echo $i >>d;done
awk '{print $1"\t"$1}' d|sed 's/^/Z\t/g' >E3.bed
for i in `cat PLGRKT.bamlist`; do  bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 $i -l E3.bed> $i.E3;done
for j in *E3;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.E3count;done
for i in *E3count;do sed -i "s/^/$i\t/g" $i ; done
cut -f2 E3.bed > e3.bed
for i in `cat e3.bed`;do cat *E3count|awk -v val=$i '$3==val{print $0}' >> $i.E3position;done
for i in `ls -1 *.E3position`;do sed -i 's/\./\t/' $i;done

#EXON 4
for i in {27634230..27634348..1};do echo $i >>f;done
awk '{print $1"\t"$1}' f|sed 's/^/Z\t/g' >E4.bed
for i in `cat PLGRKT.bamlist`; do  bam-readcount -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -w 0 $i -l E4.bed> $i.E4;done
for j in *E4;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.E4count;done
for i in *E4count;do sed -i "s/^/$i\t/g" $i ; done
cut -f2 E4.bed > e4.bed
for i in `cat e4.bed`;do cat *E4count|awk -v val=$i '$3==val{print $0}' >> $i.E4position;done
for i in `ls -1 *.E4position`;do sed -i 's/\./\t/' $i;done

