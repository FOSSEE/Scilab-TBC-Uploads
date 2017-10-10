// To determine the starting torque and current using different starters

clc;
clear;

// Rated Parameters of the motor
V=400; // Delta connected
P=50*735.5; // Power developed
N=750; // Speed

Ifl=50; // Full Load current
Z=2.5; // Impedance per phase
sf=4.5/100; // Slip
f=50;

Tfl=P*60/(2*%pi*N);
 
deff('y=curr(x)','y=(sqrt(3))*x/Z');

deff('a=stor(b)','a=((b/Ifl)^2)*sf*Tfl');

//Case 1
I1=curr(V);
T1=stor(I1);

//Case 2
I3=curr(70*V/100);
T3=stor(I3);

T2=Tfl*((1/sqrt(3))^2); // Case 2 torque
I2=I1;

printf('The starting torque and the starting current using different starters are : \n')

printf('i) D.O.L starter = %g Nm and %g A \n',T1,I1)
printf('ii) Star-delta starter = %g Nm and %g A \n',T2,I2)
printf('iii) An auto transformer starter with 70 percent tapping = %g Nm and %g A \n',T3,I3)
