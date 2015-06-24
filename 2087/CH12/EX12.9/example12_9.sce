

//example 12.9
//calculate depth of downstream cut-off
clc;funcprot(0);
//given
Q=1000;        //discharge of river
L=256;         //crest length of diversion
f=1.1;         //silt factor
seg=1/6;       //safe exit gradient
hfl=103;       //high flood level
cf=100;        //reduced level of downstream concrete floor
H=2.4;         //maximum static head of weir
b=40;          //length of concrete floor

q=Q/L;
R=1.35*(q^2/f)^(1/3);
rld=hfl-1.5*R;
d=cf-rld;
d=round(d*100)/100;
mprintf("depth of downstream cut-off=%f m.",d);

alpha=b/d;
lambda=(1+(1+alpha^2)^0.5)/2;
G=H/(d*%pi*(lambda)^0.5);
//since G<seg
mprintf("\n G=%f. <1/6./nfloor is safe against failure by piping.",G);

