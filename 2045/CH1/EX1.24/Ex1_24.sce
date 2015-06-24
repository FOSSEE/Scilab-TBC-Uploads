//pagenumber example 24
clear
vh=60*10^-3;//volt
w=6*10^-3;//metre
bz=0.1;//weber per metre square
i1=10*10^-6;//ampere
resist=300000*10^-2;//ohm metre
//(1)
//mobility
rh=vh*w/(bz*i1);
u1=rh/resist;
disp("mobilty   =   "+string((u1))+"metre square per velocity second");



