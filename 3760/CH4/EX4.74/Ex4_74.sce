clc;
v=400; // rated voltage of dc shunt motor
io=5; // current at no load
ra=0.5; // armature resistance
rf=200; // field resistance
i=50; // current at full load
ifl=v/rf; // constant shunt field current
iao=io-ifl; // no load armature current
wo=v*iao-iao^2*ra; // no load rotational losses
ia=i-ifl; // full load armature current
la=ia^2*ra; // full load armature circuit losses
lf=v*ifl; // constant shunt feld losses
tl=la+lf+wo; // total field losses
pi=i*v; // motor input at full load
nm=(1-(tl/pi))*100;
printf('Output power is %f KW\n',(pi-tl)/1000);
printf('Efficiency on full load is %f percent\n',nm);
Ea1=v-iao*ra; // no load counter EMF
Ea2=v-ia*ra; // full load counter EMF
pr=((Ea1-Ea2)/Ea1)*100; // Ea is directly proportioal to speed so percentage change in Ea is same as percentage in speed;

printf('Percentage change in speed from no load to full load is %f percent',pr);  
