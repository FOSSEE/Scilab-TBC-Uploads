//Example 4.3 // Degree of non-monochromacity
clc;
//given data :
t=1D-10;//coherence time in sec
c=3D8;//speed of light in m/s
w=54D-8;// wavelength of non-monochromacity in m
B=1/t;//bandwidth in Hz
v=c/w;//frequency of  source
D=B/v;// degree of non-monochromacity
disp(D,"degree of non-monochromacity")
