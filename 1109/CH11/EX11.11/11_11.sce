clear;
clc;
Zin=400+(%i*4000);Zout1=100+(%i*1000);Zout2=38+(%i*380);
Zoc1=Zin;Zoc2=Zout1;Zsc2=Zout2;
Z3=sqrt(Zoc1*(Zoc2-Zsc2));
Z1=Zoc1-Z3;
Z2=Zoc2-Z3;
A=real(Z1);
B=imag(Z1);
C=real(Z2);
D=imag(Z2);
E=real(Z3);
F=imag(Z3);
printf("-Z1 = %f + j(%f) ohms\n",round(A*10)/10,round(B*10)/10);
printf("-Z2 = %f + j(%f) ohms\n",fix(C*10)/10,fix(D));
printf("-Z3 = %f + j(%f) ohms\n",fix(E*10)/10,fix(F));


