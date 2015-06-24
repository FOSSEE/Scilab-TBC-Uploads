clc
V1=5.5; //m^3
p1=16*10^5; //Pa
T1=315; //K
V2=V1;
p2=12*10^5; //Pa
R=0.287*10^3;
y=1.4;

m1=p1*V1/R/T1;
T2=T1*(p2/p1)^((y-1)/y);

m2=p2*V2/R/T2;
disp("Mass of air which left the receiver=")
m=m1-m2;
disp(m)
disp("kg")