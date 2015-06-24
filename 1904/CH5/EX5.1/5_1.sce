//To determine the circuit parameters of a radial express feeder
//Page 254
clc;
clear;

Z=0.1+(0.1*%i); //Feeder Impedance per unit
R=real(Z); //Resistance
X=imag(Z); //Reactance
Vs=1; //Sending End Voltage
Pr=1; //Constant Power Load
pfr=0.8; //Power Factor at recieving end
tr=acosd(pfr); //Power FActor angle
deff('x=angle(y)','x=atand(imag(y)/real(y))') //Function to Determine the Angle of a phasor

K=(Vs^2)-(2*Pr*(R+(X*tand(tr))));

Vr=sqrt((K/2)*(1+sqrt(1-((2*abs(Z)*Pr/(K*pfr))^2)))); //Recieving End Voltage
C=Pr*(X-(R*tand(tr)))/((Vr^2)+(Pr*(R+(X*tand(tr)))));

del=atand(C);

Ir=(Pr/(abs(Vr)*pfr))*exp(-1*%pi*%i*tr/180) //Recieving End Current
Is=Ir; //Sending End Current
Tir=angle(Ir);

Vr1=Vs-(Z*Ir);

printf('\na) Vr is %g/_%g pu, del is %g degrees, Ir = Is = %g/_%g pu\n',abs(Vr),angle(Vr),del,abs(Ir),Tir)
printf('b) Vr is %g/_%g pu, which is almost equal to the previous case.\n',Vr1,angle(Vr1))
