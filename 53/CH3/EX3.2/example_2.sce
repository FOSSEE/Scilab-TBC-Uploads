
rin=10000;//in ohms
Kv=100;//constant for voltage-controlled voltage-source
rout=1000;//in ohms
//load resistance Rload
Rload=4000;//in ohms
C2=50*(10**-12);//in Farads
disp('Vout=Vin*(input voltage coupling)*Kv*(output voltage coupling)');
disp('(i)Mid band gain');
disp('Av=(Vout/Vin)=Kv*(Rload/(rout+Rload))');
Av=Kv*(Rload/(rout+Rload));
disp('(ii)For the upper half-power frequency');
disp('fu=(1/(2*%pi))*(1/(C2*(rout||Rload)))');
fu=(1/(2*%pi))*(1/(C2*((rout*Rload)/(rout+Rload))));
//Let coupling capacitance be C
disp('(iii)For coupling capacitance C ');
disp('fl=(1/(2*%pi))*(1/(C*rin))');
fl=10;//given lower half-power frequency fl
disp('C=1/(2*%pi*fl*rin)');
C=1/(2*%pi*fl*rin);
disp('RESULTS:\n');
printf('(i)Mid-band gain=%d\n',Av);
printf('(ii)Upper half-power frequency=%1.2f MHz\n',fu/(10**6));//fu divided by 10^6 to convert into MHz
printf('(iii)Coupling capacitance C for fl to be 10Hz is %1.2f uF\n',C*(10**6));// C multiplied by 10^6 by convert to microFarads