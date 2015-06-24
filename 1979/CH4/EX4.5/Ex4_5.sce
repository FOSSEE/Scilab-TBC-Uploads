//chapter-4 page 143 example 4.5
//==============================================================================
clc;
clear;

//For a microstrip transmission line 
er=9.7;//relative dielectric constant of an alumina substrate 
x1=0.5;//w/h ratio in first transmission line 
x2=5;//w/h ratio in second transmission line 
c=3*10^8;//Velocity of Light in m/sec

//CALCULATION
disp('For case1: w/h=0.5');
disp('Since x1=0.5<1, for this we use high impedance analysis');
Eeff1=(((er+1)/2)+((er-1)/2)*(1/((sqrt(1+(12/x1)))+(0.04*(1-x1)^2))));//Effective dielectric constant
Zo1=((60/sqrt(Eeff1))*log((8/x1)+(x1/4)));//Characteristic impedance in ohms
V1=(c/sqrt(Eeff1))/10^8;//Velocity of propagation in 10^8 m/sec
mprintf('\nEffective dielectric constant is Eeff1=%1.2f \nCharacteristic impedance is Zo1=%2.2f ohms \nVelocity of propagation is V1=%1.1f *10^8 m/sec',Eeff1,Zo1,V1);

disp('For case2: w/h=5');
disp('here x2>1');
Eeff2=(((er+1)/2)+((er-1)/2)*(1/(sqrt(1+(12/x2)))));//Effective dielectric constant
Zo2=((120*(%pi)/sqrt(Eeff2))*(1/(x2+1.393+(0.667*log(1.444+x2)))));//Characteristic impedance in ohms
V2=(c/sqrt(Eeff2))/10^8;//Velocity of propagation in 10^8 m/sec
mprintf('\nEffective dielectric constant is Eeff2=%1.2f \nCharacteristic impedance is Zo2=%2.2f ohms \nVelocity of propagation is V2=%1.2f *10^8 m/sec',Eeff2,Zo2,V2);

//=========================END OF PROGRAM===============================
