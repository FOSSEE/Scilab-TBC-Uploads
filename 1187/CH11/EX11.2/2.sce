clc

disp("(a) the angle through which the airstream is deflected")

y=1.4;
R=287; // J/kg.K
T1=238; // K
u1=773; // m/s
beta1=38; // degrees
cp=1005; // J/kg.K

a1=sqrt(y*R*T1);
M1=u1/a1;

beta2=atand(tand(beta1)*((2+(y-1)*M1^2*(sind(beta1))^2)/((y+1)*M1^2*(sind(beta1))^2)));

deflection_angle=beta1-beta2;
disp("Deflection angle =")
disp(deflection_angle)
disp("degrees")

disp("(b) the final Mach number")

u2=u1*cosd(beta1)/cosd(beta2);

T2=T1+1/(2*cp)*(u1^2-u2^2);
a2=sqrt(y*R*T2);

M2=u2/a2;

disp("Final Mach number =")
disp(M2)

disp("(c) the pressure ratio across the wave.")
ratio=T2/T1*(tand(beta1)/tand(beta2));
disp("Pressure ratio =")
disp(ratio)