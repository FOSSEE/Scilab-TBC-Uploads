clc;
//ex2.1
R1=1000; //kohm;
VS=5; //Volt//voltage across voltage source
IT=0; //Ampere; because diode in reverse bias and does not allow conduction through diode
VD1=VS-(IT*R1); //apply kvl in the circuit
VR1=VD1-VS; //apply kvl in the circuit
disp( 'Volt',VD1*1,"VD1=");
disp( 'Ampere',IT*1,"IT=");
disp( 'Volt',VR1*1,"VR1=");
