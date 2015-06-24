

//example 12.10
//calculate critical exit gradient and factor of safety of system
clc;funcprot(0);
//given
b=60;       //length of floor
H=6;        //static head of weir
d=6;        //downstream depth of pile
n=0.3;      //porousity of soil particles
G=2.7;      //relative density of soil particles

alpha=b/d;
lambda=(1+(1+alpha^2)^0.5)/2;
Ge=H/(d*%pi*(lambda)^0.5);
e=n/(1-n);
chg=(G-1)/(1+e);
f=chg/Ge;
f=round(f*100)/100;
mprintf("critical exit gradient=%f.\nfactor of safety of system=%f.",chg,f);
