clc
clear
//Input data
V1=0.2;//Volume of air flow per second in a two stage single acting reciprocating compressor in m^3
P1=0.1;//Intake pressure of air in MPa
T1=293;//Initial temperature in K
P3=0.8;//Final pressure after the air is compressed in MPa
N=600;//Operating speed of the compressor in rpm

//Calculations
P2=(P1*P3)^(0.5);//Intercooler pressure for perfect intercooling and for minimum work of compression in bar
Vl=(V1*60)/600;//Volume of the LP cylinder in m^3
Vh=(P1*Vl)/P2;//Volume of the high pressure cylinder in m^3
R=Vl/Vh;//Ratio of cylinder volumes

//Output
printf('The volume ratio of LP to HP cylinders is %3.2f',R)
