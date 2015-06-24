clc
clear
disp('example 14.12')
pa=500   //power of unit a
pb=2000  //power of unit b
ra=2.5   //speed regulation of a
rb=2     //speed regulation of b
dl=0.01  //change in load
df=0.01  // change in frequency
pt=20     //change in tie line power 
ptl=0     //let other power station has zero 
pbas=2000  //assume base as 2000MW
f=50        //assume frequency
da=(dl*pa)/(df*f)  //change in power w.r.t frequency
dapu=da/(pbas)  // change in power w.r.t frequency in per unit
db=(dl*pb)/(df*f) //change in power in unit b
dbpu=db/pbas      //change in power w.r.t frequency in per unit
raa=ra*pbas/pa  //speed regulation with pbase
rbb=rb*pbas/pb  //speed regulation with pbase
ba=dapu+(1/raa)  //area frequency response a
bb=dbpu+(1/rbb)  //area frequency response b
ma=pt/pbas       //assume change in power in unit a alone due to tie power
mb=ptl/pbas       //change in power in unit b
df=-(ma+mb)/(ba+bb) //change in frequency
dpp=(ba*mb-bb*ma)/(ba+bb)  //change in power
disp('(a)')
printf("change in frequency is %.3fHz  \n change in power between ab %.5fp.u.MW \n \t\t%.2fMW",df,dpp,dpp*pbas)
ma2=ptl/pbas       //assume change in power in unit a alone due to tie power
mb2=pt/pbas       //change in power in unit b
df2=-(ma2+mb2)/(ba+bb) //change in frequency
dpp2=(ba*mb2-bb*ma2)/(ba+bb)  //change in power
disp('(b)')
dpba=dpp2*pbas
printf("change in frequency is %.3fHz  \n change in power between ab %.5fp.u.MW \n",df2,dpp2)
printf(" change in power %fMW",dpba)