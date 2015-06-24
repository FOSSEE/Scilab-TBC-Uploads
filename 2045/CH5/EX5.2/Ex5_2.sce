//pagenumber 285 example 2
clear
ic=1.3*10^-3;//ampere
colres=2*10^3;//ohm
re=500;//ohm
v1=0.026;//volt
beta1=100;
vcc=15;//volt
c1=10*10^-6;//farad
ib=ic/beta1;
ri=0.01/ib;
volgai=beta1*colres*ib/0.01;
disp("voltage gain   =   "+string((volgai))+"<180");
disp("voltage gain reduced ce removed");
disp("when cb is   short circuited the voltage gain increased");
