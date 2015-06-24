//exa 6.8
clc;clear;close;
format('v',6);
kV1=132;//kV
kV2=33;//kV
kV3=11;//kV
MVA1=75;//MVA
MVA2=50;//MVA
MVA3=25;//MVA
X=0.12;//p.u.
//part(a)
P=60;//MW
V1=125;//kV
V1=V1/kV1;//p.u.
Q=MVA2/MVA1;//p.u.
//V1=Vn+X*Q/Vn
Vn=poly(0,'Vn');
eqn=Vn^2-V1*Vn+X*Q
Vn=roots(eqn);//p.u.
Vn=Vn(1);//p.u.
Vn=Vn*kV1;//kV
k=Vn/kV2;//Transformer ratio
disp(k,"Under Load condition, transformer ratio is ");
//part(b)
V1=140;//kV
V1=V1/kV1;//p.u.
Q=MVA3/MVA1;//p.u.
//V1=Vn+X*Q/Vn
Vn=poly(0,'Vn');
eqn=Vn^2-V1*Vn+X*Q
Vn=roots(eqn);//p.u.
Vn=Vn(1);//p.u.
Vn=Vn*kV1;//kV
k=Vn/kV2;//Transformer ratio
disp(k,"Under No Load condition, transformer ratio is ");
