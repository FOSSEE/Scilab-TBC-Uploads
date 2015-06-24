clc
V1=5; //m^3
p1=2*10^5; //Pa
T1=300; //K
p2=6*10^5; //Pa
p3=2*10^5; //Pa
R=287;
n=1.3;
y=1.4;

m=p1*V1/R/T1;
T2=T1*(p2/p1)^((n-1)/n);
T3=T2*(p3/p2)^((y-1)/y);
W_12=m*R*(T1-T2)/(n-1)/1000; //polytropic compression
W_23=m*R*(T2-T3)/(y-1)/1000; //Adiabatic expansion

W_net=W_12+W_23;
disp("Net work done on the air = ")
disp(-W_net)

T=[T1 310 320 330 340 350 360 370 380 T2];
function s=f(T)
    s=(y-n)/(y-1)/(1-n)*R/10^3*log(T);
endfunction
s=[f(T1) f(310) f(320) f(330) f(340) f(350) f(360) f(370) f(380) f(T2)]
plot(s,T)

T=[T2 T3];
s=[f(T2) f(T2)];
plot(s,T,'r')

xtitle("T-s diagram", "s(kJ/kg K)", "T(K)")
legend("p*v^1.3=constant", "p*v^y=constant")