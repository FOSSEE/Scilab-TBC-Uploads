clc;
e=1.6*10^-19;    //charge on an electron in coulomb
E=5*10^3;        //electric field in V/m
m=3.3*10^-26;    //mass of neon ion in kg
F=E*e;           //calculating foece in Newton using F=Q*E
a=F/m;           //calculating accelaration in m/sec square using Newton's Law(F=m*a)
disp(F,"Force on neon Ion in Newton = ");     //displaying result
disp(a,"Accelaration of the ion in m/sec square");    //displaying result