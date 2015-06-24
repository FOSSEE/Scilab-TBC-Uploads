//Page Number: 392
//Example 8.3
clc;
//Given
Vbd=1000; //V
f=30D+9; //Hz
E=3D+5; //V/cm
Cj=0.3D-12; //F
er=11.8;
e0=8.854D-12;

W=Vbd/E;
Wpi=W/100; //mu

//Total series resistance
R=1/(2*%pi*f*Cj);
disp('ohms',R,'Total series resistance:');

//Junction Area
A=(Cj*Wpi)/(e0*er);
disp('cm2',A*10000,'Junction Area:');
