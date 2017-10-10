//chapter 3 example 7//
clc
clear
//operating wavelength=l,total material dispersion=dtm,total waveguide dispersion=dtw,received pulse duration=Tr,transmitted pulse duration=T,approximate bit rate=Bmax,total dispersion=dtt,total intermodal dispersion=dtimd//
dtm=2.81;//in nanoseconds//
dtw=0.495;//in nanoseconds//
T=0.5;//in nanoseconds//
dtimd=0;
dtt=sqrt((dtimd^2)+(dtm^2)+(dtw^2));//in nanoseconds//
Tr=T+dtt;//in nanoseconds//
Bmax=(1/(5*Tr))*1000;
printf("\n approximate bit rate=%fMHz \n",Bmax);
