//pagenumber 517 example 5
clear
induct=500*10^-6;//henry
induc1=5000*10^-6;//henry
mutuin=300*10^-6;//henry
c1=150*10^-12;//farad
//(a) frequency
indcto=induct+induc1+2*mutuin;
freque=1/((2)*3.14*sqrt(indcto*c1));
//(b) condition
r=10*10^3;//ohm
conduc=8*10^-3;//ampere per volt
r1=50*10^3;//ohm
r`=r*r1/(r+r1);
volgai=conduc*r';
disp("frequency   =   "+string((freque))+"hertz");
ratio1=(induc1+mutuin)/(induct+mutuin);
ratio1=ratio1*volgai;
disp("ratio1 greater than 1 so oscillations possible");

