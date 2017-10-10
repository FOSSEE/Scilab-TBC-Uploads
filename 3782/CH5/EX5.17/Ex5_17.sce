
//
//

bs1=3.150,bs2=3.860,bs3=0.470,

is1=2.245,is2=2.125,is3=0.760,is4=1.935,is5=3.225,

fs1=1.125,fs2=2.235,fs3=3.890,


sbs=bs1+bs2+bs3
sis=is1+is2+is3+is4+is5
sfs=fs1+fs2+fs3

r1=bs1-is1
r2=is1-fs1
r3=bs2-is2
r4=is2-is3

sr=r1+r2+r3+r4
printf("\n r1,r2,r3,r4,sr")


f1=fs2-is3
f2=is4-bs3
f3=is5-is4
f4=fs3-is5
sf=f1+f2+f3+f4
printf("\n f1,f2,f4,f3,sf")

k=sbs-sfs
printf("\n k= %0.3f ",k)
k1=sr-sf
printf("\n k1= %0.3f ",k1)
