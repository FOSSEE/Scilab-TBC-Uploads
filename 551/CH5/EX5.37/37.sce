clc
cv=0.718; //kJ/kg.K
R=0.287; //kJ/kg.K
p1=1*10^5; //Pa
T1=300; //K
V1=0.018; //m^3
p2=5*10^5; //Pa
T3=T1;
cp=cv+R;
p3=p2;

m=p1*V1/R/T1/1000; //kg
T2=T1*p2/p1;

disp("(i) constant volume process")
disp("dS=")
dS_12=m*cv*log(T2/T1);
disp(dS_12)
disp("kJ/K")

disp("(ii) Constant prssure process ")
disp("dS=")
dS_23=m*cp*log(T3/T2);
disp(dS_23)
disp("kJ/K")

disp("(iii) Isothermal process")
disp("dS=")
dS_31=m*R*log(p3/p1);
disp(dS_31)
disp("kJ/K")

disp("T-s diagram")
s=sqrt(300):0.1:sqrt(600);
T=s^2;
plot(s,T)

s=22.18:0.1:sqrt(600);
T=10*(s-16.725)^2;
plot(s,T,'r')

s=[sqrt(300) 22.18];
T=[300 300];
plot(s,T,'g')

xtitle("T-s diagram", "S", "T")
legend("p=C", "V=C", "T=C")

disp("p-V diagram")
xset('window',1)

V=[0.018 0.018];
p=[1 5];
plot(V,p)

p=[5 5];
V=[0.0036 0.018];
plot(V,p,'r')

V=0.0036:0.0001:0.018;
function p=f(V)
    p=1*0.018/V;
endfunction

plot(V,f,'g')

xtitle("p-V diagram", "V", "p")
legend("V=C","p=C","T=C")