clc
p1=1.02*10^5; //Pa
T1=295; //K
V1=0.015; //m^3
p2=6.8*10^5; //Pa
y=1.4;


disp("(i) Final temperature")
T2=T1*(p2/p1)^((y-1)/y);
t2=T2-273; 
disp("t2=")
disp(t2)
disp("°C")


disp("(ii) Final volume :")
V2=V1*(p1/p2)^(1/y);
disp("V2=")
disp(V2)
disp("m^3")


disp("(iii)Work done")
R=287;
m=p1*V1/R/T1;
W=m*R*(T1-T2)/(y-1)/10^3;
disp("W=")
disp(W)
disp("kJ")