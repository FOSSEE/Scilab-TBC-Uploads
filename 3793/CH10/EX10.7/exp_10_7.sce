clear;
clc;
Sb=30;
vb=11;
sg=20;
p=10;
R=6.6;
Ea=1;
//generator
X1=complex(0,.1);
X2=complex(0,.1);
X0=complex(0,.15);
x1=X1*(Sb/sg);
x2=X2*(Sb/sg);
x0=X0*(Sb/sg);
//transformer12
xt1=complex(0,.12);
xt2=complex(0,.12);
xt0=complex(0,.12);
//transmission line
vtr=22;
Ztr=vtr^2/Sb;
Z=complex(1,5);
Zpu=Z/Ztr;
//transformer34
Xt1=complex(0,.05);
Xt2=complex(0,.05);
Xt0=complex(0,.05);
xtt1=Xt1*(Sb/sg);
xtt2=Xt2*(Sb/sg);
xtt0=Xt0*(Sb/sg);
Vf3=1;
Rpu=((Vf3^2)*Sb)/p;
Rf=(R*Sb)/vtr^2;
Il=p/Sb;
Vf4=Vf3+(Il*xtt1);
Zfp=((x1+xt1+Zpu)*(Rpu+xtt1))/(x1+xt1++Zpu+Rpu+xtt1);
Zfn=Zfp;
zf0=Zpu+xt1;
Ia1=Vf3/(Zfp+Zfn+Rf);
Ia2=-Ia1;
Va0=0;
Va1=Ea-(Zfn*Ia1);
Va2=-Zfn*Ia2;
Ibase=(Sb*1000)/(sqrt(3)*vtr);
a=complex(-.5,.866);
A=[1 1 1;1 a^2 a;1 a a^2];
V1=[Va0;Va1;Va2];
V=A*V1;
Vab=V(1,1)-V(2,1);
Vbc=V(2,1)-V(3,1);
Vca=V(3,1)-V(1,1);
mprintf("Actual Line Voltages are Vab=%f+%f    Vbc=%f%f   Vca=%f+%f \n",real(Vab),imag(Vab),real(Vbc),imag(Vbc),real(Vca),imag(Vca));

Ib1=complex(0,-sqrt(3))*Ia1;
Ib=Ib1*Ibase;
mprintf("Phase current is %f%f A",real(Ib),imag(Ib));
