clc;clear;
//Example 2.2

//given values
V=900;//potential difference in V
B=0.01;//uniform magnetic field in Wb/m^2
em=1.76*10^11;//value of e/m in C/kg

//calculation
v=sqrt(2*em*V);
disp(v,'The linear velocity(in m/s) of electron is');
R=v/(em*B);
disp(R,'The radius(in m) of the circular path is')