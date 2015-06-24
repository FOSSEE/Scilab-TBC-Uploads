//Example 4.1 // Coherence length for laser
clc;
//given data :
v=3000;// bandwidth in Hz
c=3D8;//speed of light in m/s
t=1/v;//Coherence time in sec
l=c*t;//coherence length in m
l=l/1D3;// to convert in km
disp(l,"Coherence length for laser in km")
