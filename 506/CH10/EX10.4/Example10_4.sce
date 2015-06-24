clear;
clc;

//Caption:Voltage Gain of MOSFET as a single stage and then as first transistor

//Given Data
Rd=100;//in K
f=20000;//frequency in Hertz
//MOSFET parameters
gm=1.6;//in mA/V
rd=44;//in k
Cgs=3*(10^-12);//in F
Cds=1*(10^-12);//in F
Cgd=2.8*(10^-12);//in F
m=gm*rd;//mew

//Required Formulae
Ygs=2*%pi*f*Cgs*%i;//in mho
Yds=2*%pi*f*Cds*%i;//in mho
Ygd=2*%pi*f*Cgd*%i;//in mho
gd=1/rd;//in mho
Yd=1/Rd;//in mho
gm=1.6*(10^-3);//in mho
disp('Gain of one stage amplifier');
Av=(-gm+Ygd)/(gd+Yd+Yds+Ygd);//Voltage Gain
disp(Av,'Av=');

disp('Gain after nelecting the interelectrode capacitance');
Av=-(m*Rd)/(Rd+rd);//Voltage Gain
disp(Av,'Av=');

//Let k= gm*Rd'
k=-Av;
Ci = (Cgs*(10^12)) +((1+k)*Cgd*(10^12));
disp('Value of Input Impedence Capacitance');
disp('pF',Ci,'Ci=');

//Now considering a two stage amplifier consisting of an FET operating
//New input Impedence taking into account various factors for present codition
Ci=200*(10^-12);
disp('Now considering a two stage amplifier consisting of an FET operating');
Yl=(0.001/Rd)+(2*%pi*f*Ci*%i);
disp(Yl,'Load Admittance =');

gd=gd*0.001;
disp('Gain');
Av=-(gm)/(gd+Yl);//Voltage Gain
disp(Av,'Av=');

//end