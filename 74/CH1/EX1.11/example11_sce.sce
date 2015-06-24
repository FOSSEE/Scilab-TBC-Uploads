//chapter 1
// example 1.11
// page 35
Rin=1000;Rc=1000;Re=2500000;// resistance is in ohm(given)
Hfe=50;Hre=0;Hoe=0;Hie=1000;//given
Vid=1*10^-3;Vc=20*10^-3// voltage in volts
Aid=-(Hfe*Rc)/(Rin+Hie);// differential gain Aid
Vout=Aid*Vid;// output voltage
disp(Vout)//result in ampere.
// to calculate CMRR we have to first find Acm common mode gain
Acm=((2*Re*Hoe-Hfe)*Rc)/(2*Re*(1+Hfe)+Rin+Hie)// common mode gain
CMRR=Aid/Acm;//CMRR
disp(CMRR)//result
CMRRdb=20*log10(CMRR);
disp(CMRRdb)// result CMRR is in db