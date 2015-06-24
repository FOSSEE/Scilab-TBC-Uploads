clc;
w=200;    //weight in lb
ds=64;    //weight density of seawater in lb/ft cube
dg=480;   //weight density of iron in lb/ft cube
V=w/dg;   //calculating V using dg=w/V in ft cube
w1=ds*V;   //calculating weight of seawater displaced by anchor in lb
bf=w-w1;  //calculating net force in lb
disp(bf,"Net Force to support in lb = ");  //displaying result.