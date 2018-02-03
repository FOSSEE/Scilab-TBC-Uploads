//Electric machines and power systems by Syed A Nasar
//Publisher:TataMcgraw Hill
//Year: 2002 ; Edition - 7 
//Example 3.14
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;

Q=25;       //power in kvA
v1=440;    //primary voltage in V
v2=220;     //secondary voltage in v
vO=220;Io=9.6;Po=710;   //open circuit parameters in V,A,W
vs=42;Is=57;Ps=1030;    //short circuit parameters in V,A,W

a=v1/v2;
zs1=vs/Is;
Rs1=Ps/Is^2;
xs1=(zs1^2-Rs1^2)^(1/2);
R1=Rs1/2;
R2=R1/a^2;
x1=xs1/2;
x2=x1/a^2;
to=acosd(Po/(Io*vO));
io=Io*(cos(to)-%i*sin(to));
E2=vO-io*(R2+%i*x2);
Pc2=Po-(Io^2)*R2;
Rc2=E2^2/Pc2;
Ic2=E2/Rc2;
Im2=(Io^2-Ic2^2)^(1/2);
xm2=abs(E2)/Im2;
xm1=a^2*xm2;
Rc1=a^2*Rc2;

printf('The parameters are R1=%f xm1=%f Rc1=%f X1=%f in ohms',R1,xm1,Rc1,x1)
