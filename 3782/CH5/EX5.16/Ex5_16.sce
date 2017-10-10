
//
//

bs1=2.375,bs2=2.835,bs3=0.435,

is1=1.730,is2=0.615,is3=2.070,is4=1.835,is5=1.630,

is6=2.255
fs1=3.450,fs2=0.985,fs3=3.630,


sbs=bs1+bs2+bs3
sis=is1+is2+is3+is4+is5+is6
sfs=fs1+fs2+fs3

r1=bs1-is1
r2=is1-is2
r3=bs2-is3
r4=is3-is4
r5=is4-fs2
sr=r1+r2+r3+r4+r5
printf("\n r1,r2,r3,r4,r5,sr")


f1=bs2
f2=is5-bs3
f3=fs3-is6
f4=is6-is5
sf=f1+f2+f3+f4
printf("\n f1,f2,f4,f3,sf")

k=sbs-sfs
printf("\n k= %0.3f ",k)
k1=sr-sf
printf("\n k1= %0.3f ",k1)
