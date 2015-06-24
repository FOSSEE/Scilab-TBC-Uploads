clc;
v1=-20;     //velocity in m/sec
vs=0;     //velocity in m/sec
fs=500;    //original frquency
f1=(fs*(v+v1))/(v-vs);   //doppler effect
disp(f1,"Percieved frequency in Hz = ");   //diplaying result