clc;
//ex2.2
VD1=0; //Volt//diode is forward bias for ideal diode total Rideal=0 so VD1=IT*Rideal=0V
R1=1000; //kilo ohm;
VS=5; //Volt //voltage across voltage source
IT=(VS/R1)-(VD1/R1);//Ampere;apply kvl in the circuit
VR1=IT*R1; //Volt//apply ohms law voltage across resistance
disp( 'Volt',VD1*1,"VD1=");
disp( 'mAmpere',IT*1000,"IT=");
disp( 'Volt',VR1*1,"VR1=");
