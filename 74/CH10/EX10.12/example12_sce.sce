//chapter 10
//example 10.12
//page 372
Vref=7;Vout=5;Vin=15;
Il=1*10^-3;Isc=1.5;Vsense=.65;
Imax=150*10^-3;//Imax of IC-723 is 150mA
R1=(Vref-Vout)/Il;
disp(R1)
R2=Vout/Il;
disp(R2)
R3=(R1*R2)/(R1+R2);
disp(R3)
Rsc=Vsense/Isc;
disp(Rsc)
Bmin=Il/Imax
Pd=(Vin-Vout)*Isc
Icmax=2*Isc;//Maximum collector current
disp(Icmax)
Vout=0;//maximum collector to emitter voltage can be calculated as under the voltage across Q will maximum when the load is short circuited
Vcemax=Vin-Vout;
disp(Vcemax)