clc;
E=600;     //electric field in volt/metre
s=0.15;    //distance between plates in metre
r=0.05;    //distance in m
V=E*s;     //calculating potential difference in Volt
disp(V,"(a)Potential Difference in Volt = ");      //displaying result
Q=10^-10;   //charge in coulomb
F=Q*E;     //calculating force in Newton
disp(F,"Force on the charge of 10^-10 C in Newton = ");   //displaying result
KE=F*r;      //calculating Kinetic Energy in Joule
disp(KE,"Kinetic Energy in Joule = ");      //displaying result