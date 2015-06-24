//Determine (a) The cutoff wavelength for the dominant mode (b) The wavelength in a waveguide, also for the dominant mode (c) The corresponding ground and phase velocities

a = 3;
m = 1;
vc = 3e+10;
f = 6e+9;

lambda0 = (2*a)/m;
lambda = vc/f;

rho = sqrt(1 - (lambda/lambda0)^2);

lambdap = lambda/rho;

vg = vc*rho;
vp = vc/rho;

disp(lambda0, 'Cutoff wavelength for the dominant mode is (in cm) ')
disp(lambdap, 'Wavelength in a waveguide for the dominant mode (in cm) ')
disp(vg, 'Group Velocities (in m/s) ')
disp(vp, 'Phase Velocities (in m/s) ')
