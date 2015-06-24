clc
p1=1; //bar
p2=5; //bar
T3=1000; //K
cp=1.0425; //kJ/kg K
cv=0.7662; //kJ/kg K
y=cp/cv;

disp("(i)Temperature entropy diagram")

s=10:1:50;
function T=fb(s)
    T=s^2
endfunction
plot(s,fb,'--')

s=10:1:50;
function T=fc(s)
    T=(s+30)^2
endfunction
plot(s,fc,'r')

s=[12 12];
T=[fb(12) fc(12)];
plot(s,T,'m')

s=[45 45];
T=[fb(45) fc(45)]
plot(s,T,'g')


xtitle("T-s diagram", "s", "T")
legend("p1=1 bar", "p2=5 bar", "1-2", "3-4")

disp("(ii) Power required =")
T4=T3*(p1/p2)^((y-1)/y);
P=cp*(T3-T4);
disp("P=")
disp(P)
disp("kW")