clear;
clc;

//Caption:To find wether a given circuit is positive NAND
//Given Data
R=15;//in K
R1=15;//in K
R2=100;//in K
R3=2.2;//in K
V0=0;//in V
V1=12;//in V
Vcc=12;//in V

//If input is at V0=0V
Vb = -Vcc*(R1/(R1+R2));//The base voltage of the transistor
disp('V',Vb,'The base voltage of transistor Vb=');
if(Vb<0)
    disp('Q is cutoff and Y is at 12V');
    disp('The result confirms the first three rows of truth table');
end

//If input is at V1 = 12V
//Assumption:All the diodes are reversed biased and transistor is in saturation
//If Q is in saturation
Vbe=0;//in V
Vp = V1*(R/(R+R1));//voltage at point P in front of all diodes
disp(Vp,'All diodes are reversed biased by');
Iq = (V1/(R+R1)-(V1/R2));//The base current of Q
Ic=V1/R3;//Current in the collector junction
disp('mA',Ic,'Ic=');
hFEmin = Ic/Iq;
disp(hFEmin,'hFEmin=');
disp(hFEmin,'When hFE >');
disp('Under these condition the output is at ground and this satisfies the first three rows of truth table');


//end