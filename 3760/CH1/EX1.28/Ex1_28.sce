clc;
P=10000; // rated power of transformer in VA
E1=2500; // primary side voltage
E2=250; // secondary side voltage
pf=0.8; // power factor
//initialising the results of open circuit test
vo=250; // open circuit voltage
io=0.8; //no load current
po=50; // open circuit voltage
// initialising the results of open circuit test
vsc=60; // short circuit voltage
isc=3; // short circuit current
psc=45; // power dissipated in test
ifl=P/E1; // full load current on primary side
poh=psc*(ifl/isc)^2; // ohmic losses at full load current
disp('case a(1)');
n=(1-(po+(poh/4^2))/(po+(poh/4^2)+(P*pf)/4))*100; // efficiency at 1/4 load
printf('efficiency at 1/4 load is %f percent\n',n); 
disp('case a(2)');
n=(1-(po+(poh/2^2))/(po+(poh/2^2)+(P*pf)/2))*100; // efficiency at 1/2 load
printf('efficiency at 1/2 load is %f percent\n',n); 
disp('case a(3)');
n=(1-(po+(poh/1^2))/(po+(poh/1^2)+(P*pf)/1))*100; // efficiency at full load
printf('efficiency at full load is %f percent\n',n);
disp('case a(4)');
n=(1-(po+((poh*5^2)/4^2))/(po+((poh*5^2)/4^2)+(P*pf*5)/4))*100; // efficiency at 1*1/4 load
printf('efficiency at 5/4 load is %f percent\n',n);  
// let maximum efficiency occurs at x times the rated KVA
// maximum efficiency occurs when core loss becomes equal to ohmic losses
x=sqrt(po/poh); 
nm=(x*P)/1000; // VA output at maximum
nmax=(1-(2*po)/(nm*1000*pf+2*po))*100; 
printf('KVA load at which maximum efficiency occurs is %f KVA\n',nm);
printf('Maximum efficiency is %f percent\n',nmax);
// from short circuit test
reh=psc/isc^2; // total resistance referred to h v side
zeh=vsc/isc; // total impedance referred to h v side
xeh=sqrt(zeh^2-reh^2); // total leakage reactance referred to h v side
er=(ifl*reh)/E1; //p u resistance
ex=(ifl*xeh)/E1; // p u reactance
vr=(er*pf+ex*sqrt(1-pf^2))*100; // p u voltage regulation
printf(' p u voltage regulation for lagging power factor is %f percent\n',vr);
dv=E2*(vr/100); // voltage drop in series impedance
v2=E2-dv;
printf('secondary terminal voltage for lagging power factor of 0.8 is %f v\n',v2);
// voltaage regulation for leading power factor
vr=(er*pf-ex*sqrt(1-pf^2))*100; // p u voltage regulation
printf(' p u voltage regulation for leading power factor is %f percent\n',vr);
dv=E2*(vr/100); // voltage drop in series impedance
v2=E2-dv;
printf('secondary terminal voltage for leading power factor of 0.8 is %f v\n',v2);
