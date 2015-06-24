clear;
clc;
Isc=10;Voc=120;Rl=8;Il=6;
Zeq=Voc/Isc; //Zeq=impedance of the equivalent thevenin's generator Z=R+jX
t=Voc/Isc; //(R^2)+(X^2)=(t^2)
R=(((Voc/Il)^2)-(t^2)-(Rl^2))/(2*Rl);
X=sqrt((t^2)-(R^2));
printf("The equivalent Thevenin generator has an emf of %d volts and an internal impedance of (%d + j%d) ohms",Voc,R,X);

