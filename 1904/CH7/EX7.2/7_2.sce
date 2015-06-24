//To determine the voltage drop or voltage regulation of a 3phase system
//Page 327
clc;
clear;

Vll=416; //Voltage Line to Line
Vph=Vll/(sqrt(3)); //Phase Voltage and Base Voltage
//Load Currents
Ia=30;
Ib=20;
Ic=50;

//Power Factors of the load
pfa=1;
pfb=0.5;
pfc=0.9;

//Impedances of the Sections
ZA=0.05+(%i*0.01);
ZAB=0.1+(%i*0.02);
ZBC=0.05+(%i*0.05);
//Impedance upto the point of load
ZB=ZA+ZAB;
ZC=ZB+ZBC;

//Function to Calculate Voltage Drop
deff('x=VD(a,b,c)','x=a*((real(b)*c)+(imag(b)*sind(acosd(c))))')

//Voltage Drops at A,B and C
VDA=VD(Ia,ZA,pfa);
VDB=VD(Ib,ZB,pfb);
VDC=VD(Ic,ZC,pfc);

TVD=VDA+VDB+VDC; //Total Voltage Drop

TVDpu=TVD/Vph; // In Per Unit

deff('x=Real(y,z)','x=Vph*y*z') //Function to Calculate Real Power
deff('x=Reactive(y,z)','x=Vph*y*sind(acosd(z))') //Funtion to Calculate the Reactive power

//Real Powers
Pa=Real(Ia,pfa);
Pb=Real(Ib,pfb);
Pc=Real(Ic,pfc);
P=Pa+Pb+Pc; //Total Real Power


//Reactive Powers
Qa=Reactive(Ia,pfa);
Qb=Reactive(Ib,pfb);
Qc=Reactive(Ic,pfc);
Q=Qa+Qb+Qc; //Total Reactive Power

S=sqrt((P^2)+(Q^2)); //Total output from the Transformer
PF=P/S; //Load Power Factor

printf('\na) The Total Voltage drop is %g pu\n',TVDpu)
printf('b) The Real Power per Phase is %g kW\n',P/1000)
printf('c) The Reactive Power per Phase is %g kVAr\n',Q/1000)
printf('d) The Kilovoltampere output and load factor is %g kVA and %g lagging\n',S/1000,PF)
