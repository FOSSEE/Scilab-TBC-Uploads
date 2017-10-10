//Example 6// Ch 12
clc;
clear;
close;
// given data
l=85;//in km
r=1;//core cables of conductore radius r in cm
f=50;//in Hz
Rex=3.0;//external radii in cm
Rin=2.5;//internal radii in cm
Rac=0.0875;//conductor AC resistance in ohms/km
rest=23.2*10^-6;//resistivity of lead in ohms cm
tc=0.004;//temperature coefficient
Rc=Rac*(1+tc*f)*l;//conductor resistance in ohms
Rsh=rest*l*10^5/(%pi*(Rex^2-Rin^2));
printf("conductor resistance %f ohms",Rc)
printf("resistance of sheath %f ohms",Rsh)
rsh=0.5*(Rin+Rex);//mean radius of sheath
D=8;//cable to cable spacing in cm
Xm=2*%pi*f*2*log(D/rsh)*10^-7*l*10^3;//conductor to sheath mutual inductive reactance for 85km length
printf("inductive reactance %f ohms",Xm)
Ref=Rc+(Xm^2*Rsh)/(Rsh^2+Xm^2);//effective AC resistance of conductor
printf("effective resistance %f ohms",Ref)
Xc=11.1;//resistance with sheaths open ckt in ohms
Xef=Xc-(Xm^2)/(Rsh^2+Xm^2);//effective reactance per cable
printf("effective reactance per cable %f ohms",Xef)
s=Rsh*(Xm^2)/(Rc*(Rsh^2 + Xm^2));//sheath loss to conductor loss
printf("sheath loss to conductor loss %f",s)
I=400;//current in A
emf=I*Xm;//emf induced without bonding per sheath in V
printf("emf induced %f V",emf)
 





