
//scilab 5.4.1
//windows 7 operating system
//chapter 6:Diode Circuits
clc;
clear;
//given data

Vdc=20;  //DC value in V
Vpp=1;  //Peak to peak ripple voltage in V

Vp=Vpp/2;   //Peak ripple voltage in V
Vrms=Vp/sqrt(2);    //Vrms voltage in V
S=Vrms/Vdc;     //Ripple Factor
format("v",7)
disp(S,'Ripple factor=')
T=S*100;
format("v",5)
disp("%",T,'Percentage Ripple=')
//end
