clc;
//pg no. 117
pzm=500*10**-3;
d=3.33*10**-3;
a=75;
b=50;
Td=d*(a-b);
disp('mW',Td*10**3,"Td=");
pz=pzm-Td ;
disp('mW',pz*10**3,"pz=");
