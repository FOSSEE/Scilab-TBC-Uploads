//problem 1 pagenumber 4.38
//given
z='0101';format(6);
n=4;
vof=15;//volt
r=vof/(2^n-1);
v0=r*base2dec(z,2);

disp('Output voltage = '+string(v0)+' volt');


