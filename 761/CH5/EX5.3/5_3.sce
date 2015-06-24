clc;
//page no 181
//prob no. 5.3
//A transmitter operates at 12V, with collector current 2A.Modulatn transformer has turn ratio 4:1
//Determination of impedance at transformer secondary  
Vcc=12;Ic=2;N1=4;N2=1;
Za=Vcc/Ic;
disp('ohm',Za,'The impedance of transformer secondary is');
//Determination of impedance of transformer primary 
Zp=Za*(N1/N2)^2;
disp('ohm',Zp,'The impedance of transformer primary is');