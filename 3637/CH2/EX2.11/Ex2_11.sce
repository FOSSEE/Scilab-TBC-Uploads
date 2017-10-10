//problem 11 pagenumber 2.95
//given
format(6);
rf1=10e3;//ohm
r1=2e3;//ohm
r2=5e3;//ohm
//determine output voltage
cof1=-rf1/r1;//coefficient of v1
cof2=-rf1/r2;//coefficient of v2
disp('Output voltage = '+string(cof1)+'v1+('+string(cof2)+'v2)');

