//Exa 6.16
clc;
clear;
close;
format('v',7);

//Given Data :
m=1.5;//Kg
p1=5;//bar
x1=0.8;//dry
x2=0.4;//dry
Vg1=0.373;//m^3/Kg(at 5 bar)
hf1=640.1;//KJ/Kg(at p=5 bar)
hfg1=2107.4;//KJ/Kg(at p=5 bar)
Vg2=x1/x2*Vg1;//m^3/Kg
p2=4;//bar(at Vg2=0.746)
hf2=529.6;//KJ/Kg(at p=4 bar)
hfg2=2184.9;//KJ/Kg(at p=4 bar)
V1=x1*Vg1;//m^3/Kg
V2=V1;//m^3/Kg
h1=hf1+x1*hfg1;//KJ/Kg
h2=hf2+x2*hfg2;//KJ/Kg
Q=m*[(h2-h1)-100*(p2*V2-p1*V1)];//KJ
disp(Q,"Quantity of heat in KJ : ");
//Steam table is used to get some data.
