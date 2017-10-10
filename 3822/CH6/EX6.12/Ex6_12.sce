
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 6.12
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
Area_Cell=4;// Area of each cell in cm^2
eta=0.12;// Conversion Efficiency
V=0.5;// Voltage generated in V
Pt=12;// Total output Power in W
IR=100*10^-3;// Solar Constant or Input Radiation in mW/cm^2
Active_area_Panel=(Pt/(IR*eta));// Active area of the Panel in cm^2
Number_Cells=(Active_area_Panel/Area_Cell);// Number of cells
I=(eta*IR*Area_Cell/V);// Current capacity in A
mprintf("\n Number of Cells are =%.2f",Number_Cells);
mprintf("\n Active area of the Panel is= %.2fcm^2",Active_area_Panel);
mprintf("\n Current capacity of each cell is =%.2fmA",I*1e3);//Multiplication by 1e3 to convert unit to mA from A
