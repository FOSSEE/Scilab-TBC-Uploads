//to calculate sec voltage magnitude and ph

clc;
a=6000/100;    //turn ratio
R1=780;
R2=907;
X1=975;
X2=1075;
Xm=443*1000;
disp('sec open');
//Zb=inf;
V1=6500;
V22=complex(0,Xm)*V1/complex(R1,Xm);
V2=V22/a;
disp(abs(V2),'voltage magnitude(V)');
disp(atand(imag(V2)/real(V2)),'phase(deg)');

disp('when Zb=Rb');
Rb=1;
Rbb=Rb*a^2;
Zm=complex(0,Xm/1000)*Rbb/complex(0,Xm/1000)+Rbb;
R=complex(R1/1000,X1/1000)+Zm;
Vm=Zm*V1/R;
V2=Vm/a;
disp(abs(V2),'voltage magnitude(V)');
disp(atand(imag(V2)/real(V2)),'phase(deg)');

disp('when Zb=jXb');
Rb=complex(0,1);
Rbb=Rb*a^2;
Zm=complex(0,Xm/1000)*Rbb/complex(0,Xm/1000)+Rbb;
R=complex(R1/1000,X1/1000)+Zm;
Vm=Zm*V1/R;
V2=Vm/a;
disp(abs(V2),'voltage magnitude(V)');
disp(atand(imag(V2)/real(V2)),'phase(deg)');
