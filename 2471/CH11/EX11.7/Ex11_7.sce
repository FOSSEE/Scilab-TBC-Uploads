clear ;
clc;
// Example 11.7
printf('Example 11.7\n\n');
printf('Page No. 320\n\n');

//given
T1 = 40;// in degree 
T2 = 0;// in degree celcius
//As from carnot cycle, C.O.P = (T1/(T1 - T2)), where temperature are in degree celcius
C_O_P1 = ((T1+273)/((T1+273) - (T2+273)));
printf('C.O.P. is %.1f \n',C_O_P1)

// A secondary fluid as hot water at 60 deg C is used
T3 = 60;//  Temperature of hot water in degree celcius
C_O_P2 = ((T3+273)/((T3+273) - (T2+273)));
printf('C.O.P. when secondary fluid is used is %.1f \n',C_O_P2)
