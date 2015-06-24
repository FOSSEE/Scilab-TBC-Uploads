//Chapter 5
//Example 5.1
//page 132
//To find sending-end voltage and voltage regulation
clc;clear;

load1=5000; //kW
pf=0.707;
Vr=10000; //receiving end voltage
R=0.0195*20;
X=2*%pi*50*0.63*10^-3*20;

//to find sending end voltage and voltage regulation
I=load1*1000/(Vr*pf);
Vs=Vr+I*(R*pf+X*sin(acos(pf)));
voltage_regulation=(Vs-Vr)*100/Vr;
printf('\n\nReceiving current =I=%d A\n',I);
printf('Sending end voltage =Vs=%d V\n',Vs);
printf('Voltage Regulation=%0.2f %%',voltage_regulation);

//to find the value of the capacitor to be connected in parallel to the load
voltage_regulation_desi=voltage_regulation/2;
Vs=(voltage_regulation_desi/100)*Vr+Vr;
//by solving the equations (i) and (ii)
pf=0.911;
Ir=549;
Ic=(Ir*(pf-%i*sin(acos(pf))))-(707*(0.707-%i*0.707));
Xc=(Vr/imag(Ic));
c=(2*%pi*50*Xc)^-1;
printf('\n\nCapacitance to be connected across the load so as to reduce voltage regulation by half of the above voltage regulation is given by :\n C = %d uF\n',c*10^6);

//to find efficiency in both the cases
//case(i)
losses=I*I*R*10^-3;
n=(load1/(load1+losses))*100;
printf('\n Efficiency in : \nCase(i) \t n=%0.1f%%',n);
//caase(ii)
losses=Ir*Ir*R*10^-3;
n=(load1/(load1+losses))*100;
printf('\nCase(ii) \t n=%0.1f%%',n);



