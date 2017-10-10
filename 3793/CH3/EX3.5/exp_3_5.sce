clear;
clc;

f=50;
d=.05;     //Diameter Of each Conductor in m
r=d/2;        //radius Of each conductor
D=.5;     //Space Between Two Conductor in m
ln=200;      //Distance Of the Line in km
Dsb=sqrt(.7788*r*D);          
Dyb=10;
Dry=10;
Dbr=20;
D_eq=((Dyb*Dry*Dbr)^(1/3));         
L=(2*(10^-7)*log(D_eq/Dsb)*(10^(6)));          
mprintf(" Inductaance = %.3f mH/Km \n",L);
l=L*ln*(10^-3)           
 mprintf("the Inductaance of the line= %.3f H\n",l);
Xl=2*%pi*l*f;            
mprintf("the reactance of the line= %.3f ohm",Xl);

