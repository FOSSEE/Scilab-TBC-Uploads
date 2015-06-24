
//To determine the characteristics gear ratio and wheels are replaced
//Page 397
clc;
clear;

D1=86; //Diameter of wheels in Case 1
Y1=71/21; //Gear Ratio in Case 1
D2=88; // Diameter of wheels in Case 2
Y2=74/19; //Gear Ratio in case 2
I=[50,100,150,200,250,300]; //Current
L1=[80,50,45,40,36,32]; //Speed in Kmph
Ft1=[2000,6000,12000,16000,18000,22000]; //Tractive Effort

// V = pi*D*N*60/(100*100*Y)
//According to the above equation, V is directly proportional to D*N/Y

//Angular Frequency And Torque remains the same irrespective of the gear ratio or change in diameter

//Hence the V is directly proportional to D/Y

//V id directly proportional to N
// N directly proportional to Linear speed
//Hence relating the above terms
//We get linear speed directly proportional to D/Y

L2=L1.*D2*Y1/(D1*Y2); //Linear Speed in Case two

//Similarly T = Ft * D/(200)
//Dividing by Y ; (T/Y) = Ft*D/(200*Y)
//Taking two cases where we find Torque per gear ratio of one case
// And multiply the Torque to Gear ratio to the other gear ratio to get Torque
// From this process we T1*Y2/Y1 =T2
// We Get Ft is directly proportional to Y/D

Ft2=Ft1.*D1*Y2/(D2*Y1); //Tractive Effort in Second Case

printf('The New Characteristics are\n Current in Amperes\n')
disp(I)
printf('\nSpeed in Kmph\n')
disp(L2)
printf('\nTractive Effort in N\n')
disp(Ft2)
