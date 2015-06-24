//Page Number: 299
//Example 5.15
clc;
//Given
v0=300;//V
i0=20D-3;//A
v1=40;//V
n=2;
x=2.408;
j1x=0.52;

//(i) Input power
pin=i0*v0;//W
disp('W',pin,'Input power:');

//(ii) Output power
pout=(2*v0*i0*x*j1x)/((2*%pi*n)-(%pi/2));//W
disp('W',pout,'Output power:');

//Efficiency
eet=pout/pin;
disp('%',eet*100,'Efficiency:');

//Answer for output power in book is 0.7 which is wrong, it should be 1.3W
//Hence answer of efficiency also changes
