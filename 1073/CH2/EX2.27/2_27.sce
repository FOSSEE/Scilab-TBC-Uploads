
clc;
clear;
//Example 2.26
//Given:
T1=573;          //[K]
T2=323;         //[K]
T3=298;         //[K]
h1=29;           // Outside heat transfer coefficients [W/sq m.K]
h2=12;          //[W/sq m.K]
r1=0.047;            //Internal radius [m]
r2=0.05;             //Outer radius[m]
k1=58 ;              //[W/m.K]
k2=0.052;            //[W/m.K]
//Q=(T1-T2)/(1/(r1*h1)+log(r2/r1)/k1+log(r3/r2)/k2)=(T2-T3)/(1/(r3*h2))
deff('[x]=f(r3)','x=(T1-T2)/(1/(r1*h1)+log(r2/r1)/k1+log(r3/r2)/k2)-(T2-T3)/(1/(r3*h2))')
//by trial and error method :
r3=fsolve(0.05,f)
t=r3-r2             //Thickness of insulation in [m]
//Q=h2*2*%pi*r3*L*(T2-T3)
Q_by_l=h2*2*%pi*r3*(T2-T3)      //[W/m]
printf("\n Thicknesss of insulation is %d mm \n Rate of heat loss per unit length is %f W/m",round(t*1000),Q_by_l);
