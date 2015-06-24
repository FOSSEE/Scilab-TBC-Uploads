clc;
v=343;     //velocity in m/sec
fs=800;    //original frquency
f1=750;   //percieved frquency
vs=v*(1-(fs/f1)); //calculating velocity
disp(vs,"Trains velocity in m/sec = ");   //diplaying result