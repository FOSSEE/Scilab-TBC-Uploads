//problem 20 pagenumber 2.103
//given
v1=2;//volt
v2=3;//volt
v3=6;//volt
v4=8;//volt
rf1=50e3;//ohm
r1=40e3;//ohm
r2=25e3;//ohm
r3=10e3;//ohm
r4=20e3;//ohm
r5=30e3;//ohm
//determine output voltage
v0x=-(v1*rf1/r1)-(v2*rf1/r2);format(5);
req=r5*r4/(r5+r4);//combination of r4 and r5
re1=(r3*r5)/(r3+r5);//combination of r3 and r5
vn=req*v3/(r3+req)+(re1*v4/(r4+re1));
v0y=(1+rf1/(r1*r2/(r1+r2)))*vn;
disp('Output voltage = '+string(v0x+v0y)+' V');
