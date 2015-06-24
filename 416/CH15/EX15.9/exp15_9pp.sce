clc
clear
disp("example 15.9")
ng=50 //number of generator
r=30  //rated power 
mah=10 //maximum head
mih=1  //minimum head
tg=12  //duration of generation
efg=0.9  //efficiency of generated
g=9.81   //gravity
le=5   //lenght of embankment
ro=1025 //density
ti=r/(0.9)^2
q=ti*10^(6)/(ro*g*mah) //maximum input
q=floor(q*10^2)/10^2
qw=q*ng  //total quantity of water
tcr=qw*tg*3600/2  //total capacity of resevoir
sa=tcr/mah   //surface area 
wbe=sa/(le*10^6)  //wash behind embankment
avg=r/2
te=avg*tg*365*ng  //total energy output
printf("quantity of water for maximum output %fm^3-sec ",q)
printf("\nsurface area of reservoir %fkm^3 ",sa/10^6)
printf("\nwash behind embankment %fkm \ntotal energy output %eMWh",wbe,te) 