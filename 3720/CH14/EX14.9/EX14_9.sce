//Example 14_9
clc;clear;funcprot(0);
// Given values
n=1170;// Rotation rate in rpm
H=23.5;// Net head in ft
v=320;// gpm
g=9.81;// m/s^2

// Calculation
N_spUS=(n*v^(1/2)/(H)^(3/4));
printf('The pump specific speed in customary U.S. units,N_sp,US=%0.1f \n',N_spUS);
omega=(2*%pi*n)/60;
// N_sp1=N_spUS*(N_sp/N_spUS) using conversion factor
N_sp1=N_spUS*(3.658*(10^-4));
printf('Normalized pump specific speed using the conversion factor =%0.3f \n',N_sp1);
// The answer vary due to round off error
