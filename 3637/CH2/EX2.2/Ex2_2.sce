//problem 2 pagenumber 2.86
//given
format(6);
v1=5;//volt
v2=2;//volt
rf1=10e3;//ohm
r1=10e3;//ohm
//determine output voltage
v0=-((-v1*rf1/r1)-(-v2*rf1/r1));
disp('Output voltage = '+string(v0)+' V');

