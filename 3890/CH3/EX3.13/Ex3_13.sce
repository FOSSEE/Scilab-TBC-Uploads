//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.13
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

p=80;     //power input in W
v=120;     //supply voltage  in V
I=1.4;      //supply current in A
R=.25;      //primary resistance in ohm
X=1.2;      //leakage reactance in ohm

pf=p/(v*I);
th=acosd(pf);
i=I*(cos(th)-%i*sin(th))
E=v-(I*(R+%i*X));
Rc=abs(E)^2/(p-(I^2)*R);
Ic=abs(E)/Rc;
Im=(I^2-Ic^2)^(1/2);
xm=E/Im;

printf('The magnetising reactance is %f ohms\n',xm)
printf('The core loss equivalent resistance is %f ohms',Rc)
