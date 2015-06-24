//To Determine the Transformer parameters for a 3 phase load of 200kVA
//Page 127
clc;
clear;

//Considering Van as reference voltage

SL3phi=200*(10^3); //Load to be powered
pf3=0.8; //Power Factor of three phase load
t3=acosd(pf3); //Power FActor Angle for three phase load
pf1=0.9; //Power Factor of single phase load
t1=acosd(pf1); //Power Factor angle of single phase load
SL1=80*(10^3); //Single Phase Light Load
Vll=240; //Secondary Voltage
//Rating of Single Phase Transformers between individual lines
Sbc=100*(10^3);
Sab=75*(10^3);
Sca=Sab;
//Angles of Three phase voltages 
ta=0;
tb=-120;
tc=120;
//Angles of three  line currents
tai=ta-t3;
tbi=tb-t3;
tci=tc-t3;

I=SL3phi/(sqrt(3)*Vll); //Magnitude of Current
//3 Phase Line Currents
Ia3=I*exp(%i*%pi*tai/180);
Ib3=I*exp(%i*%pi*tbi/180);
Ic3=I*exp(%i*%pi*tci/180);

MIbc=SL1/Vll; //Magnitude Single Phase Current

tbc=-90; //Lagging Van //Angle of Vbc
tbci=tbc-t1; //Angle of Current Ibc
Ibc=MIbc*exp(%i*%pi*tbci/180);

//Load Currents
Ia=Ia3;
Ta=atand(imag(Ia)/real(Ia));
Ib=Ib3+Ibc;
Tb=atand(imag(Ib)/real(Ib));
Ic=Ic3-Ibc; //Current is wrong in the textbook
Tc=atand(imag(Ic)/real(Ic));

//Current Flowing in the secondary winding of the transformers 1,2 and 3
Iac=((Ic/Sbc)-(Ia/Sab))/((1/Sab)+(1/Sbc)+(1/Sca));
T1=atand(imag(Iac)/real(Iac)); //Angle of the above current
Iba=((Ia/Sca)-(Ib/Sbc))/((1/Sab)+(1/Sbc)+(1/Sca));
T2=atand(imag(Iba)/real(Iba)); //Angle of the above current
Icb=((Ib/Sab)-(Ic/Sca))/((1/Sab)+(1/Sbc)+(1/Sca));
T3=atand(imag(Icb)/real(Icb)); //Angle of the above current

//Kilovoltampere Load on each transformer
SLab=Vll*abs(Iba)/1000;
SLbc=Vll*abs(Icb)/1000;
SLca=Vll*abs(Iac)/1000;

Vlls=Vll; //Secondary Voltage
Vllp=7620; //Primary Voltage
n=Vllp/Vlls; //Turns Ratio

//Primary Currents of the transformer
IAC=Iac/n;
IBA=Iba/n;
ICB=Icb/n;

//Primary Current in each each phase wire
IA=IAC-IBA;
TA=atand(imag(IA)/real(IA));//Angle of the above current
IB=IBA-ICB;
TB=atand(imag(IB)/real(IB));//Angle of the above current
IC=ICB-IAC;
TC=atand(imag(IC)/real(IC));//Angle of the above current

printf('\na) The Line Currents flowing in secondary phase wire :\n')
printf('A phase is %g/_%g A\n',abs(Ia),Ta)
printf('B phase is %g/_%g A\n',abs(Ib),Tb)
printf('C phase is %g/_%g A\n',abs(Ic),Tc)
printf('b) The Current flowing in secondary winding of each transformer:\n')
printf('AC is %g/_%g A\n',abs(Iac),T1)
printf('AB is %g/_%g A\n',abs(Iba),T2)
printf('BC is %g/_%g A\n',abs(Icb),T3)
printf('c) The Load on Each Transformer is:\n')
printf('1 : %g kVA\n',SLca)
printf('2 : %g kVA\n',SLab)
printf('3 : %g kVA\n',SLbc)
printf('d) The Current flowing in primary winding of each transformer:\n')
printf('AC is %g/_%g A\n',abs(IAC),T1)
printf('AB is %g/_%g A\n',abs(IBA),T2)
printf('BC is %g/_%g A\n',abs(ICB),T3)
printf('e) The Line Currents flowing in primary phase wire :\n')
printf('A phase is %g/_%g A\n',abs(IA),TA)
printf('B phase is %g/_%g A\n',abs(IB),TB)
printf('C phase is %g/_%g A\n',abs(IC),TC)

//Ic is calculation is wrong, the author has added Ibc instead of subtracting, so if you change - into + in line 45, you get the answer as in the textbook
