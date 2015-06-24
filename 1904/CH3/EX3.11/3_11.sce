//To Determine the parameters of two single transformers
//Page 157
clc;
clear;

//Per unit value
Zt=0.01+(%i*0.03); //Transformer impedance

Vll=240; //Secondary Voltage

Sl=90; //Lighting Load
pfl=0.9;
tl=acosd(pfl);
S=25; //Balanced Load
pf=0.8;
t=acosd(pf);

deff('x=angle(y)','x=atand(imag(y)/real(y))') //Function to find the angle

tab=30; //Phase angle of Vab

Il=Sl*1000/Vll; //Magnitude of Light Load
//Using the symmetrical - components theory
Ia1=Il*exp(%i*%pi*(tab-tl)/180);
Ta1=angle(Ia1); //Angle for the above current
Ib1=-1*Ia1;
Ic1=0; //Neutral Wire
//Angles of three line to line voltages
ta=0;
tb=-120;
tc=120;

Ib=S*1000/(sqrt(3)*Vll); //Magnitude of balanced load

//Currents in Three phase load
Ta2=ta-t;
Ia2=Ib*exp(%i*%pi*Ta2/180);
Tb2=tb-t;
Ib2=Ib*exp(%i*%pi*Tb2/180);
Tc2=tc-t;
Ic2=Ib*exp(%i*%pi*Tc2/180);

//Currents in phase wire
Ia=Ia1+Ia2;
Ta=angle(Ia); //Angle corresponding to the above angle
Ib=Ib1+Ib2;
Tb=angle(Ib); //Angle corresponding to the above angle
Ic=Ic1+Ic2;
Tc=angle(Ic); //Angle corresponding to the above angle

//Transformer Loads
ST1=Vll*abs(Ia)/1000;
T1=100; //From the above value of Load, this transformer is chosen to meet the specific characteristic
ST1pu=ST1/T1; //Per unit Load
ST2=Vll*abs(Ic)/1000;
T2=15; //From the above value of Load, this transformer is chosen to meet the specific characteristic
ST2pu=ST2/T2; //Per unit Load

//Transformer Power Factors
pfT1=cosd(tab-Ta);
pfT2=cosd(90-Tc); //Vcb makes angle of 90

Vh=7200; //High End Voltage
n=Vh/Vll; //Turns Ratio

// The Primary Line Currents
IA=Ia/n;
IB=-1*Ic/n;
IN=-1*(IA+IB);

Ibase=T1*1000/Vll; //Base Current
Iapu=Ia/Ibase;
Icpu=Ic/Ibase;

//Phase Voltages
Vab=Vll*exp(%i*%pi*tab/180); 
Vbc=Vll*exp(-1*%i*%pi*90/180);
//Per Unit Voltages
VANpu=(Vab/Vll)+(Iapu*Zt);
VBNpu=(Vbc/Vll)-(Icpu*Zt);

//Actual Voltages
VAN=VANpu*Vh;
VBN=VBNpu*Vh;

printf('\na) The Phasor Currents:\n')
printf('Ia is %g/_%g A\n',abs(Ia),Ta)
printf('Ib is %g/_%g A\n',abs(Ib),180+Tb)
printf('Ic is %g/_%g A\n',abs(Ic),Tc)
printf('\nb) Suitable ratings of the transformers are %g kVA and %g kVA\n',T1,T2)
printf('\nc) The Per Unit kVA load on each transformer is %g pu and %g pu\n',ST1pu,ST2pu)
printf('\nd) The power factor of output of each transformer is %g and %g both lagging\n',pfT1,pfT2)
printf('\ne) The phasor currents at the high voltage leads:\n')
printf('IA is %g/_%g A\n',abs(IA),Ta)
printf('IB is %g/_%g A\n',abs(IB),180+angle(IB))
printf('IN is %g/_%g A\n',abs(IN),angle(IN))
printf('\nf) VAN is %g/_%g V and VBN is %g/_%g V\n',abs(VAN),angle(VAN),abs(VBN),angle(VBN))

//Highly Accuracy of Answers; Upto 5 decimal Places
