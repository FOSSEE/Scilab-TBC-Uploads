//Example 4.26
close;
clc;

E=3;            //in volts
Rm=2000;        //Meter resitence
Rz=28000;       //Multiplier resistence

//Given R x 1 range
R=10;           //in ohms
Rx=20;          //in ohms
V=E*R/(R+Rx);   //Voltage across parallel combination
Im=V/(Rm+Rz);   //Current through meter
printf('\nCurrent through meter in R x 1 range for 20 ohm = %.2f uA\n',Im*10^6)

//Ohmmeter is set at R x 10 range
R=100           //in ohms
Rx=200;         //in ohms
V=E*R/(R+Rx);   //Voltage across parallel combination
Im=V/(Rm+Rz);   //Current through meter
printf('\nCurrent through meter in R x 10 range for 200 ohm = %.2f uA\n',Im*10^6)

//Ohmmeter is set at R x 100 range
R=1000;         //in ohms
Rx=2000;        //in ohms
V=E*R/(R+Rx);   //Voltage across parallel combination
Im=V/(Rm+Rz);   //Current through meter
printf('\nCurrent through meter in R x 100 range for 2 k ohm = %.2f uA\n',Im*10^6)