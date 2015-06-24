// scilab Code Exa 18.16 large Centrifugal pump 1000rpm

N=1e3; // rotor Speed in RPM
H=45; // height in m
ro=1e3;
g=9.81; // Gravitational acceleration in m/s^2
n_o=0.75; // overall Efficiency of the drive
dr=2; // diameter ratio(d2/d1)
phi=0.35; // flow coefficient(cr2/u2)
Q=2.5; // discharge in m3/s

//part(a)Power required to drive the pump
P=(ro*Q*g*H)/(n_o);
disp("kW",P*1e-3,"(a)Power required to drive the pump is")

// part(b) impeller diameters at entry and exit
u2=sqrt(g*H);
w_p=u2^2;
d2=u2*60/(%pi*N);
disp("cm",d2*1e2,"(b)the impeller diameter at exit is")
d1=d2/2;
disp("cm",d1*1e2,"and the impeller diameter at entry is")

//part(c) impeller width
c_r2=phi*u2;
b=Q/(c_r2*%pi*d2);
disp("cm",b*1e2,"(c)the impeller width is")

// part(d)impeller blade angle at the entry
c_r1=Q/(b*%pi*d1);
u1=u2/dr;
beta1=atand(c_r1/u1);
disp("degree",beta1,"(d)the impeller blade angle at the entry beta1=")
