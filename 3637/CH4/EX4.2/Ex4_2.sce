//problem 2 pagenumber 4.38
//given
r=20e-3;format(6);
z='11000000';
n=8;
vof=r*(2^n-1);
v0=r*base2dec(z,2);
disp('Output offset = '+string(vof)+' volt');
disp('Output voltage = '+string(v0)+' volt');


