clear;
clc;
s=30;
v=11;
a=complex(-.5,.866);
A=[1 1 1;1 a^2 a;1 a a^2];
xs=complex(0,.5);
xn=complex(0,.3);
xz=complex(0,.08);
Z=5;
X=(Z*s)/v^2;
Xn=complex(0,3*X);
Ea=complex(1,0);
Ia1=Ea/(Xn+xn+xs+xz);
Ia=3*Ia1;
Va0=-Ia1*(xz+Xn);
Va1=Ea-(Ia1*xs);
Va2=-Ia1*xn;
V1=[Va0;Va1;Va2];
V=A*V1;
Vab=V(1,1)-V(2,1);
Vbc=V(2,1)-V(3,1);
Vca=V(3,1)-V(1,1);
Ibase=(s*1000)/(sqrt(3)*v);
If=Ia1*Ibase;
Vab1=Vab*(v/sqrt(3));
Vbc1=Vbc*(v/sqrt(3));
Vca1=Vca*(v/sqrt(3));
mprintf("Sub transient fault current is %.3f A \n",imag(If));
mprintf("Actual Line Voltages are Vab=%f+%f Kv   Vbc=%f%f Kv  Vca=%f+%f Kv",real(Vab1),imag(Vab1),real(Vbc1),imag(Vbc1),real(Vca1),imag(Vca1));



