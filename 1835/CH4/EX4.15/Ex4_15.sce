//Chapter-4, Illustration 15, Page 147
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
Ta=100//       no of teeth on gear A
Tc=101//       no of teeth on gear C
Td=99//        no of teeth on gear D
Tp=20//        no of teeth on planet gear
y=1//          from table 4.9(arm B makes one revolution)
x=-y//         as gear is fixed

//Calculations
Nc=(Ta*x)/Tc+y//            Revolution of gear C 
Nd=(Ta*x)/Td+y//            Revolution of gear D

//Output
printf('Revolution of gear C = %f\n Revolution of gear D = %f',Nc,Nd)
