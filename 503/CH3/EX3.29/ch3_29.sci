//to calculate L1 and L2 and coupling cofficient

clc;
a=10;
V_p=200;
I_p=4;
Xm=V_p/I_p;
f=50;
L1=Xm/(2*%pi*f);disp(L1,'L1(H)');
V_s=1950;
w_max=V_s/(sqrt(2)*%pi*f);
M=w_max/(sqrt(2)*I_p);

v_s=2000;
i_s=.41;
w_max=sqrt(2)*i_s*M;
E1=sqrt(2)*%pi*f*w_max;
L2=v_s/(sqrt(2)*%pi*f*sqrt(2)*i_s);disp(L2,'L2(H)');
k=M/(sqrt(L1)*sqrt(L2));disp(k,'coupling coeff');