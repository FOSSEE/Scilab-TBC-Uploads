clear;
clc;

//Caption: To find the parameters of a FET 2N3684

//Given Values
Vpmin=-2;//in V
Vpmax=-5;//in V
Idssmin=1.6;//in mA
Idssmax=7.05;//in mA
Idmin=0.8;//in mA
Ia=Idmin;
Idmax=1.2;//in mA
Ib=Idmax;
Vdd=24;//in V
Vgs1=0;//in V
Id1=0.9;//in mA
Vgs2=-4;//in V
Id2=1.1;//in mA
//Slope determines Rs
Rs=(Vgs1-Vgs2)/(Id2-Id1);
disp('ohm',Rs,'Rs=');
Vgg=Id1*Rs;
disp('V',Vgg,'Vgg=');

//end