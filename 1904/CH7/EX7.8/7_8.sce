//To determine the percent drop from the substation to various points
//Page 340
clc;
clear;

V0op=1; //At off Peak
An=4; //Service Area
l=1; //Length of 0a
//Voltages in kV 
Vll=13.2; //Line to line
Vln=7.62; //Line to neutral

//Peak Loading
Dp=1000; //Peak Loading Intensity per sq.miles
Sl=2000; //Lumped Load in kVA

//Off Peak Loading
Dop=333; //Loading intensity

VB=7620; //Base Voltage

Vs=1.025; //Substation Voltages

Sn=Dop*An; //Load Connected to the square shaped service area
Sm=Sn+Sl; //Total Load

K=0.0003; //Cable Constant

VD0a=K*Sm*l; //Voltage Drop between substation and a
lab=2;  //Distance from a to b
VDab=(K*Sn*lab/2)+(K*Sl*lab);//Voltage drop from b to c
lbc=2; //Distance from b to c
VDbc=3*K*Sl*lbc; //Voltage drop from b to c //Change in Constant

I=Sl/(sqrt(3)*(0.947*Vll));
Ib=Sl/(sqrt(3)*(Vll));//BAse Current

MIpu=I/Ib; //Per Unit Current

Ztpu=complex(0,0.05);
pf=0.9; //Load Power Factor

Ipu=MIpu*exp(%i*%pi*acosd(pf)/180);

//The Voltage has been tapped up 5 percent

puVDcd=(abs(Ipu)*((real(Ztpu)*pf)+(imag(Ztpu)*sind(acosd(pf)))))-0.05;
VDcd=puVDcd*100;
deff('x=volt(a,b)','x=(a-(b/100))') //funtion to find out voltages

//per unit Voltages
puVa=volt(V0op,VD0a);
puVb=volt(puVa,VDab);
puVc=volt(puVb,VDbc);
puVd=volt(puVc,VDcd);

//Voltages in V
Va=puVa*VB;
Vb=puVb*VB;
Vc=puVc*VB;
Vd=puVd*VB;

printf('\na) The Percentage drops are\n')
printf(' Substation to a is %g percent\n',VD0a);
printf(' a to b is %g percent\n',VDab);
printf(' b to c is %g percent\n',VDbc);
printf(' c to d is %g percent\n',VDcd);
printf('b) The Per unit voltages are:\n')
printf(' Point a is %g pu V\n',puVa)
printf(' Point b is %g pu V\n',puVb)
printf(' Point c is %g pu V\n',puVc)
printf(' Point d is %g pu V\n',puVd)
printf('c) The Line to Neutral voltages are:\n')
printf(' Point a is %g  V\n',Va)
printf(' Point b is %g  V\n',Vb)
printf(' Point c is %g  V\n',Vc)
printf(' Point d is %g  V\n',Vd)
