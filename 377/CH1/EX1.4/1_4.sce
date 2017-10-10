a=1*10^-8;
pi=3.14;
disp("∆E*∆t=h*∆v*∆t >= h/(4*pi)");
b=1/(4*pi*a);
printf('\n So, ∆v >= %f Hz',b);
disp("E=p^2/(2*m0)+(-e^2/(4*pi*Є0*r))");
printf('\n'); 
disp("The minimum value of E occurs at r=5.3*10^-11 m");
m0=9.31;
e=1.6;
h=1.054;
d=8.85;  //say d=Є0
c=((-m0)*(e^4)*4*((pi)^2))/(2*(h^2)*(4*pi*d)^2);
d=c*1.6*10^2;
printf('\n The value of minimum energy Emin is %f eV',d);
