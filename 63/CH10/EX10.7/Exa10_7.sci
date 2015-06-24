//Determine the cut-off wavelength, the guide wavelength, the group and phase velocities and the char. wave impediance for (a) the TE10 mode and (b) the TM11 mode

vc = 3e+10;
f = 9e+9;
a = 4.5;
b = 3;
m = 1;
n = 1;
L = 120*%pi;

lambda = vc/f;
lambda0 = (2*a)/m;
rho = sqrt(1 - (lambda/lambda0)^2);
lambdap = lambda/rho;
vga = vc*rho;
vpa = vc/rho;
Z0 = L/rho;

lambda0b = 2/sqrt((m/a)^2 + (n/b)^2);
rhob = sqrt(1 - (lambda/lambda0b)^2);
lambdapb = lambda/rhob;
vgb = vc*rhob;
vpb = vc/rhob;
Z0b = L*rhob;

disp(lambda0, 'Cut-off wavelength for TE10 mode (in cm)')
disp(lambdap, 'Guide wavelength for TE10 mode (in cm)')
disp(vga, 'Group Velocitiy for TE10 mode (in m/s)')
disp(vpa, 'Phase Velocitiy for TE10 mode (in m/s)')
disp(Z0, 'Char. Impediance for TE10 mode (in ohms)')

disp(lambda0b, 'Cut-off wavelength for TM11 mode (in cm)')
disp(lambdapb, 'Guide wavelength for TM11 mode (in cm)')
disp(vgb, 'Group Velocitiy for TM11 mode (in m/s)')
disp(vpb, 'Phase Velocitiy for TM11 mode (in m/s)')
disp(Z0b, 'Char. Impediance for TM11 mode (in ohms)')
