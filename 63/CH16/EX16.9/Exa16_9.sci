//Determine the Doppler frequency seen by a stationary radar

vc = 3e+8;
f = 5e+9;


lambda = vc/f;
vr = 100e+3/(60*60);

fd = (2*vr)/lambda;

disp(fd, 'Doppler frequency is (in Hz)')