// scilab Code Exa 18.5 Calculation on a Draft Tube 

c2=6.25; // exit velocity in m/s
ro=1e3; // density in kg/m3
g=9.81; // Gravitational acceleration in m/s^2
AR=1.6; // Area Ratio of Diffuser
Q=100; // discharge in m3/s
n_D=0.82; // Efficiency of the Draft Tube

// part(a)
c1=c2*AR;
A1=Q/c1;
disp("m2",A1,"(a)area of cross-section at entry is")
A2=A1*AR;
disp("m2",A2,"and the area of cross-section at exit is")

// part(b)
delHi=((c1^2)-(c2^2))/(2*g);
delH_a=delHi*n_D;
disp("m",delH_a,"(b)actual head gained by the Draft Tube is")

// part(c)
m=ro*Q;
delP_a=m*g*delH_a;
disp("MW",delP_a*1e-6,"(c)the additional power generated is")

// part(d)
Loss=delHi-delH_a;
disp("m",Loss,"(d)the loss of head due to losses in the draft tube is")

