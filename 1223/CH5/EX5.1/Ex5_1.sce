clear;
clc;
//Example 5.1
Vtn=0.75;//(V)
W=40*10^-6;//(cm)
L=4*10^-6;//(cm)
u=650;//(cm)
Iox=450*10^-11;
e=3.9*8.86*10^-14;
Kn=W*u*e/(2*L*Iox);
printf('\nconduction parameter=%f mA/V^2\n',Kn)
Vgs=2*Vtn;
i_D=Kn*(Vgs-Vtn)^2;
printf('\ndrain current=%f mA\n',i_D)
