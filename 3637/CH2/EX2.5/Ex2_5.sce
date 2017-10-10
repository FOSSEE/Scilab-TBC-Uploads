//problem 5 pagenumber 2.89
//given
format(6);
v1=2;//volt
v2=3;//volt
r1=1e3;//ohm
rf1=5e3;//ohm
r2=8e3;//ohm
//determine output voltage
v11=v2*r2/(r2+r1);
disp( 'Output voltage = '+string((1+rf1/r1)*(v2-v1))+' V');
