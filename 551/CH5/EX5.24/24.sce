clc
p1=1.05*10^5; //N/m^2
V1=0.04; //m^3
T1=288; //K
p2=4.8*10^5;
T2=T1;
R0=8314;
M=28;


disp("(i) The change of entropy =")
R=R0/M;
m=p1*V1/R/T1;
dS=m*R*log(p1/p2)
disp("Decrease in entropy =")
disp(-dS)
disp("J/K")


disp("(ii)Heat rejected = ")
Q=T1*(-dS);
disp("Q=")
disp(Q)
disp("J")


W=Q;
disp("Work done = ")
disp(W)
disp("J")

V2=p1*V1/p2;
v1=V1/m; //specific volume
v2=V2/m; //specific volume

v=v2:0.01:v1;
function p=f(v)
    p=p1*v1/v
endfunction

plot(v,f)

p=p1
plot(v,p,'--')

p=[0 p2]
v=[v2 v2]
plot(v,p,'--')

p=[0 p1]
v=[v1 v1]
plot(v,p,'--')

xtitle("p-v diagram", "v(m^3/kg)", "p(N/m^2)")

xset('window', 1)

T=[288 288]
s=[10 (10-dS)]
plot(s,T)

s=[10 10]
T=[0 288]
plot(s,T,'--')

s=[(10-dS) (10-dS)]
T=[0 288]
plot(s,T,'--')

xtitle("T-s diagram", "s(kJ/kg K)", "T(K)")