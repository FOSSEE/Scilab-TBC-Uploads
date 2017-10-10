//Example 8.2
clear;
clc;

//Given
p=0.35;
Kp=p*10^-24;//equillibrium constant at 300K
P0=1.0;//standard pressure in atm
T=300;//Temperature in K
R=0.082;// gas constant in atm dm^3 mol^-1K^-1
C0=1;//in mol/dm^3
Kp2=0.157;//Kp for reaction in (b)
P=1;//pressure in atm

// (a) To determine Kc1
delv=(2+1)-2;
c=p*((P0/(C0*R*T)))^delv
Kc1=c*10^-24;//equillibrium constant
mprintf('(a) Kc = %f *(10^-24)',c);

//(b) To determine Kc2
delv2=2-1;
Kc2=Kp2*((P0/(C0*R*T)))^delv2;
mprintf('\n (b) Kc = %f',Kc2);
Kx=Kp2*(P0/P);//equillibrium constant
mprintf('\n    Kx = %f',Kx)
//end