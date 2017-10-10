//problem 4 pagenumber 4.39
//given
n=12;format(6);
r=8e-3;//volt
z='011101110001';
//determine output voltage
vof=r*(2^n-1);res=r/vof;
v0=r*base2dec(z,2);
disp('Output voltage = '+string(v0)+' volt');
disp('Fullscale Output Voltage = '+string(vof)+' volt');
disp('Resolution = '+string(res*1e2)+' percent');
