//ex12.9
f_c=100;
f=1;
theta=phase_shift(f,f_c);
disp(theta,'phase lag when f=1Hz (in degrees)')
f=10;
theta=phase_shift(f,f_c);
disp(theta,'phase lag when f=10Hz (in degrees)')
f=100;
theta=phase_shift(f,f_c);
disp(theta,'phase lag when f=100Hz (in degrees)')
f=1000;
theta=phase_shift(f,f_c);
disp(theta,'phase lag when f=1000Hz (in degrees)')
f=10000;
theta=phase_shift(f,f_c);
disp(theta,'phase lag when f=10000Hz (in degrees)')