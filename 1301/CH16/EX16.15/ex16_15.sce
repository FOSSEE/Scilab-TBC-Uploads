clc;
v=343;     //velocity in m/sec
vs=20;     //velocity in m/sec
fs=500;    //original frquency
f1=(fs*v)/(v-vs);   //doppler effect
disp(f1,"Percieved frequency in Hz = ");   //diplaying result