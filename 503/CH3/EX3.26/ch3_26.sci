// to calculate line currents of 3 ph side

clc;
N1=6600;
N2=100;
a=N1/N2;
b=(sqrt(3)/2)*a;
P=400;    //kW
pfa=.707;
pfb=1;
V=100;
Ia=P*1000/(V*pfa);
Ib=P*2*1000/(V*pfb);
I_A=Ia/b;disp(I_A,'I_A(A)');
I_BC=Ib/a;
I_B=I_BC-49.5*complex(pfa,pfa);    disp(abs(I_B),'I_B(A)');
I_C=I_BC+49.5*complex(pfa,-1*pfa);disp(abs(I_C),'I_C(A)');

