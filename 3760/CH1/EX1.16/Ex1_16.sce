clc;
P=200000; //rated power of transformer
E1=4000; // primary side rated voltage 
E2=1000; // secondary side rated voltage
n=0.97; // efficiency
pfn=0.25; // power factor at no load
pff=0.8; // power factor at full load
vr=5; // percentage voltage regulation
Pl=((1/n)-1)*200000; // total losses at full load
Pf=Pl*0.6; // total losses at 60% of full load
Po=(Pl-Pf)/(1-0.36); // ohmic losses
Pc=Pl-Po; // core losses
re2=(Po/P)*100; // P U total resistance referred to l. v. side 
xe2=(vr-re2*pff)/sqrt(1-pff^2); // P U total leakage reactance referred to l. v. side
re2=(re2*E2^2)/(100*P); // total resistance in ohms 
disp('Total resistance referred to l. v. side is ');
printf('%f ohm',re2);
xe2=(xe2*E2^2)/(100*P); // total leakage reactance in ohms
disp('Total leakage reactance referred to l. v. side is ');
printf('%f ohm',xe2);
Rc=E2^2/Pc; 
disp('Coreloss resistance is');
printf('%f ohm',Rc);
Ie2=Pc/(E2*pfn); // exciting current in Ampere
Ic=Pc/E2; // core loss current
Im=sqrt(Ie2^2-Ic^2); // magnetizing component of exciting current
Xm=E2/Im; // magnetizing reactance
disp('Magnetizing reactance is ');
printf('%f ohm',Xm);
disp('All parameters are known. So, equivalent circuit diagram referred to l. v. side can be drawn.'); 
