//problem 10 pagenumber 2.94
//given
format(6);
v1=5;//volt
v2=2;//volt
r1=10e3;//ohm
rf1=r1;//ohm
//determine output voltage
v01=-v1*(rf1/r1);
disp('Output voltage = '+string(-(rf1/r1)*(v01+v1))+' V');

