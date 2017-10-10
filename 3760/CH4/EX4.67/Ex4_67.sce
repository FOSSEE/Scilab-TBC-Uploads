clc;
p=10000; // rated power of generator
v=250; // rated voltage of generator
l1=400; // rotationl losses
ra=0.5; // armature resistance
rf=250; // shunt field resistance
ifl=v/rf; // constant field current
lc=ifl*rf+l1; // constant losses
io=p/v; // output current of generator
ia=io+ifl; // armature current
la=ia^2*ra; // armature circuit loss
ps=p+lc+la; // generator shaft power input
printf('Generator shaft power input is %f W\n',ps);
ng=(1-((lc+la)/ps))*100; 
printf('Efficiency at rated load is %f percent\n',ng);
// at maximum efficiency variable losses= constant losses
ia=sqrt(lc/ra); // armature current at maximum efficiency
io=floor(ia)-ifl; // output current of generator
po=v*io; // output power
printf('Generator output at maximum efficiency is %f W\n',po);
pi=po+2*lc;
nm=(1-((lc+lc)/pi))*100; 
printf('Maximum efficiency is %f percent\n',nm);
