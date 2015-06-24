//example 17.10
clc; funcprot(0);
// Initialization of Variable
m=2;//kg/s
D=0.04;//m
mu=695*10^-6;//Ns/m^2;
pi=3.14;
Nu=396;//nusselt number
Re=4*m/pi/D/mu;
disp(Re,"reynolds number");
h=Nu*0.628/D;
Tmo=95-(95-25)*exp(-pi*D*h/m/4178*4);
disp(Tmo,"temperature in degree c");
q=m*4176*(Tmo-25);
disp(q/1000,"rate of heat transfer in kW");
Nu1=0.027*Re^0.8*4.62^0.33;
disp(Nu1,"Nusselt number");
h1=Nu1*0628/D;
disp(h1/1000,"coefficient of heat transfer in W/m-K");
clear()
clear()
