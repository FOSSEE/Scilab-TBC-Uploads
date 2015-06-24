//Determine the length of an antenna

v = 3e+8;
vf = 0.95;
f = 5e+5;

L = (v*vf)/f;
L1 = L*3.9;

disp(L, 'Length of an antenna is (in m)')
disp(L1, 'Length of an antenna is (in feet)')