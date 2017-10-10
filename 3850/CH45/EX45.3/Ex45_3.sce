
//To calculate the Approximate value of Dynamic Resistance of P N Junction under Forward Bias

//Example 45.3

clear;

clc;

//(a)Case-I: Forward Bias of 1 V is applied
/////////////////////////////////////////////////////////////////////////////

i1=10*10^-3;//Current in Amperes at 1 Volt

i2=15*10^-3;//Current in Amperes at 1.2 Volts

delI=i2-i1;//Net Change in Current in Amperes

v1=1;//Voltage at the Initial Point 

v2=1.2;//Voltage at the Final point

delV=v2-v1;//Net Change in Voltage

R=delV/delI;//Dynamic Resitance in ohms

printf("(a) Dynamic Resistance when a forward bias of 1 V is applied at the p-n junction = %.0f ohms",R);


//(b)Case-II: Forward Bias of 2 V is applied
////////////////////////////////////////////////////////////////////////////

v3=2;//Voltage at the Initial Point 

v4=2.1;//Voltage at the Final point

delV1=v4-v3;//Net Change in Voltage

i3=400*10^-3;//Current in Amperes at 2 Volt

i4=800*10^-3;//Current in Amperes at 2.1 Volt

delI1=i4-i3;//Net Change in Current in Amperes

R1=delV1/delI1;//Dynamic Resitance in ohms

printf("\n (b) Dynamic Resistance when a forward bias of 2 V is applied at the p-n junction = %.2f ohms",R1);
