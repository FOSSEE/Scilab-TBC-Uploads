clc
clear
disp('example 14_11')
pa=5000   //power of unit a
pb=10000   //power of unit b
r=2       //given speed regulation in p.uMW
d=0.01   //d in p.u.MW/Hz
dpa=0    //change in power  in unit a
dpb=-100 //change in power in unit b 
pbas=10000  //assume base as 10000 
ra=r*pbas/pa  //speed regulation of the unit a
da=d*pa/pbas  //da of unit b
rb=r*pbas/pb //speed regulation of unit b
db=d*pb/pbas  //db of unit b
ba=da+(1/ra)  //area frequency response of a
bb=db+(1/rb)  //area frequency response of b
ma=dpa/pbas   //change in power a in per unit in unit a 
mb=dpb/pbas   //change in power a in per unit in unit b
df=(ma+mb)/(ba+bb) //change in frequency
dpab=(ba*mb-bb*ma)/(ba+bb)  //change in power between ab
printf("change in frequency is %.5fHz \nchange in power %.6f p.u.MW",df,dpab)
