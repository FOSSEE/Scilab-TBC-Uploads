//Example 5.2 
clc;
// 1st part // V number
NA=.22;// Numerical aperture
a=50/2;// radius of core
w=.850;//wavelength in um
V=2*%pi*a*NA/w;// V number
disp(V,"V number")
// 2nd part // number of modes
N=(V^2)/4;// number of modes
disp(N,"number of modes")
