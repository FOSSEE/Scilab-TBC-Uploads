//pagenumber 225 example 41
clear
colres=3*10^3;//ohm
rb=150*10^3;//ohm
beta1=125;
vcc=10;//volt
v1=5;//volt
vb=0.7;//volt
ib=(v1-vb)/rb;
disp("ib   =   "+string((ib))+" ampere");
ic=beta1*ib;
ie=ic+ib;
disp("ic   =   "+string((ic))+" ampere");
disp("ie   =   "+string((ie))+" ampere");//correction in the book in question to find only currents

