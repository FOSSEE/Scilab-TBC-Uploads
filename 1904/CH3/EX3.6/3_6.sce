//To Determine the Transformer parameters for a 3 phase load of 100kVA
//Page 140
clc;
clear;

//Considering Van as reference voltage

SL3phi=100*(10^3); //Load to be powered
pf3=0.8; //Power Factor of three phase load
t3=acosd(pf3); //Power FActor Angle for three phase load
pf1=0.9; //Power Factor of single phase load
t1=acosd(pf1); //Power Factor angle of single phase load
SL1=50*(10^3); //Single Phase Light Load
Vll=240; //Secondary Voltage
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

MI1=SL1/Vll; //Magnitude Single Phase Current

t1v=30; //Leading Van //Angle of Vbc
t1i=t1v-t1; //Angle of Current Ibc
I1=MI1*exp(%i*%pi*t1i/180);

//Load Currents
Ia=Ia3+I1;
Ta=atand(imag(Ia)/real(Ia));
Ib=Ib3-I1;
Tb=-180+(atand(imag(Ib)/real(Ib)));
Ic=Ic3; //Current is wrong in the textbook
Tc=atand(imag(Ic)/real(Ic));

//Current flowing in the secondary of the transformer
Iba=Ia;
T2=atand(imag(Iba)/real(Iba)); //Angle of the above current
Icb=Ic;
T3=180+(atand(imag(Icb)/real(Icb))); //Angle of the above current

//Load on Each Transformer
SLba=Vll*abs(Iba)/1000;
SLcb=Vll*abs(Icb)/1000;

Vlls=Vll; //Secondary Voltage
Vllp=7620; //Primary Voltage
n=Vllp/Vlls; //Turns Ratio

//Primary Currents of the transformer
IA=Iba/n;
TA=atand(imag(IA)/real(IA));//Angle of the above current
IB=Icb/n;
TB=T3;//Angle of the above current
IN=IA+IB; //Neutral Current
TN=atand(imag(IN)/real(IN));//Angle of the above current

printf('\na) The Line Currents flowing in secondary phase wire :\n')
printf('A phase is %g/_%g A\n',abs(Ia),Ta)
printf('B phase is %g/_%g A\n',abs(Ib),Tb)
printf('C phase is %g/_%g A\n',abs(Ic),Tc)
printf('b) The Current flowing in secondary winding of each transformer:\n')
printf('AB is %g/_%g A\n',abs(Iba),T2)
printf('BC is %g/_%g A\n',abs(Icb),T3)
printf('c) The Load on Each Transformer is:\n')
printf('1 : %g kVA\n',SLba)
printf('2 : %g kVA\n',SLcb)
printf('d) The Line Currents flowing in primary phase wire :\n')
printf('AB is %g/_%g A\n',abs(IA),TA)
printf('CB is %g/_%g A\n',abs(IB),TB)
printf('The Neutral Current is %g/_%g\n',abs(IN),TN)

//Note the mistake in the Textbook for the calulation for Neutral Current
