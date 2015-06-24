// To Determine the subtransient current in the alternator , motor and the fault
clear
clc;
Ib=50*1000/(sqrt(3)*13.2);// base current (amps.)
Vf=12.5/13.5;// the Prefault Voltage (p.u)
Xf=(%i*.3)*(%i*.2)/(%i*.5);// Fault impedence(p.u)
If=.9469/(Xf);//Fault current (p.u)
Ifl=30*1000/((sqrt(3)*12.5*.8));//full load current (amps)
Il=1732*(cosd(36.8)+%i*sind(36.8))/2186;//load current(p.u)
Ifm=3*(If)/5;// fault current supplied by motor (p.u)
Ifg=2*(If)/5;// fault current supplied by generator (p.u)
Ig=abs(Ifg +Il);//Net current supplied by generator during fault(p.u)
Im=abs(Ifm-Il);//Net current supplied by motor during fault(p.u)
Igf=Ig*2186;
Imf=Im*2186;
Ifc=2186*If;
mprintf("Fault current from the generator =%.3f amps\n",Igf);
mprintf("Fault current from the motor =%.3f amps\n",Imf);
disp(Ifc,"Fault current (amps)=");
 
