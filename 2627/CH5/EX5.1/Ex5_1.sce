//Ex 5.1
clc;clear;close;
format('v',5);
kVA=250;//kVA
V1=11000;//V(Primary voltage)
V2=400;//V(secondary voltage)
f=50;//Hz
N2=80;//no. of turns in secondary
Ifl1=kVA*1000/V1;//A(Full load primay current)
Ifl2=kVA*1000/V2;//A(Full load secondary current)
disp("Part(a)");
disp(Ifl1,"Full load primary current(A)");
disp(Ifl2,"Full load secondary current(A)");
disp("Part(b)");
N1=N2*V1/V2;//no. of turns in secondary
disp(N1,"No. of turns in primary");
disp("Part(c)");
fi_m=V2/(4.44*N2*f);//Wb
disp(fi_m*1000,"Maximum value of flux(mWb)");
