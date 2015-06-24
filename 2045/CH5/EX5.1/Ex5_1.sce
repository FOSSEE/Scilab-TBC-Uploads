//pagenumber 283 example 1
clear
ic=1*10^-3;//ampere
vcc=5;//volt
colres=2*10^3;//ohm
r1=1.4*10^3;//ohm
re=100;//ohm
beta1=100;
rb=100;//ohm
v1=0.026;
c1=25*10^-6;//farad
g1=ic/v1;
freque=10*10^3;//hertz
xc=1/(2*freque*3.14*c1);
volgai=-beta1*colres/(r1+0.1*10^3+2.5*10^3);
disp("voltage gain   =   "+string((volgai)));
ri=(0.1+2.5)*10^3-imag((xc)*(1+beta1));
disp("input resistance   =   "+string((ri))+"ohm");
//ce removed
volgai=-beta1*colres/((r1+0.1*10^3+2.5*10^3)+(101/1000)*10^3*100);
disp("ce removed");
disp("voltage gain   =   "+string((volgai)));
ri=(0.1+2.5)*10^3+100*101/1000*10^3;
disp("input resistance   =   "+string((ri))+"ohm");





