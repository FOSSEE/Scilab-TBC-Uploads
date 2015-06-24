clc

disp("Part (a)")

R=0.287; //kJ/kg K
y=1.4;
m1=1; //kg
p1=8*10^5; //Pa
T1=373; //K
p2=1.8*10^5; //Pa
cv=0.717; //kJ/kg K
n=1.2;
//pv^1.2 = constant

disp("(i) The final specific volume, temperature and increase in entropy")

v1=R*10^3*T1/p1;
v2=v1*(p1/p2)^(1/n);
disp("v2=")
disp(v2)
disp("m^3/kg")

T2=p2*v2/R/10^3; //K
t2=T2-273; //0C
disp("Final temperature =")
disp(t2)
disp("0C")

ds=cv*log(T2/T1) + R*log(v2/v1);
disp("ds=")
disp(ds)
disp("kJ/kg K")


disp("(ii) Work done and heat transfer")

W=R*(T1-T2)/(n-1);
disp("Work done=")
disp(W)
disp("kJ/kg")

Q=cv*(T2-T1) + W;
disp("Heat transfer=")
disp(Q)
disp("kJ/kg")


disp("Part (b)")

disp("(i) Though the process is assumed now to be irreversible and adiabatic, the end states are given to be the same as in (a). Therefore, all the properties at the end of the process are the same as in (a).")


disp("(ii) Adiabatic process")
Q=0;
disp("Heat transfer=")
disp(Q)
disp("kJ/kg")

W=-cv*(T2-T1);
disp("Work done=")
disp(W)
disp("kJ/kg")