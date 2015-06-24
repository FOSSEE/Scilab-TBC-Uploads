//example 27
clear
beta1=99;
stability=5;
vbe=0.2;//volt
colres=2.5*10^3;//ohm
vce=6;//volt
ven=5.5;//volt
vcc=15;//volt
vcn=vce+ven;
colvol=vcc-vcn;//voltage across collector resistance
ic=colvol/colres;
ib=ic/beta1;
colre1=ven/ic;
rb=stability*colre1/(1-(stability/(1+beta1)));//correction in the book taken collector resistance as 3.13*10^3ohm but it is 3.93*10^3ohm
v1=(ib*rb)+(vbe)+((ib+ic)*colre1);
r=rb*vcc/v1;
r1=r*v1/(vcc-v1);
disp("resistance   =   "+string((colre1))+"ohm");
disp("resistance r1    =   "+string((r))+"ohm");
disp("resistance r2   =   "+string((r1))+"ohm");


