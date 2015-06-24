clc
m=28; //kg
V1=3; //m^3
T1=363; //K
R0=8314;
M=28; //Molecular mass of N2
R=R0/m;
V2=V1;
T2=293; //K

disp("(i) Pressure (p1) and specific volume (v1) of the gas")

p1=m*R*T1/V1/10^5; //bar
disp("Pressure =")
disp(p1)
disp("bar")

v1=V1/m;
disp("specific volume=")
disp(v1)
disp("m^3/kg")


disp("(ii) cp = ?, cv = ?")
//cp-cv=R/1000;
//cp-1.4cv=0;
//solving the above two eqns 
A=[1,-1;1,-1.4];
B=[R/1000;0];
X=inv(A)*B;

cp=X(1,1);
disp("cp=")
disp(cp)
disp("kJ/kg K")

cv=X(2,1);
disp("cv=")
disp(cv)
disp("kJ/kg K")


disp("(iii) Final pressure of the gas after cooling to 20°C")
p2=p1*T2/T1;
disp("p2=")
disp(p2)
disp("bar")


disp("(iv) du, dh, s, Q")

du=cv*(T2-T1);
disp("Increase in specific internal energy=")
disp(du)
disp("kJ/kg")

dh=cp*(T2-T1);
disp("Increase in specific Enthalpy =")
disp(dh)
disp("kJ/kg")

v2=v1;
ds=cv*log(T2/T1) + R*log(v2/v1);
disp("Increase in specific entropy =")
disp(ds)
disp("kJ/kg K")

W=0; //constant volume process
Q=m*du+W;
disp("Heat transfer =")
disp(Q)
disp("kJ")