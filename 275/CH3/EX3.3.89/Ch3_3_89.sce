clc
disp("Example 3.89")
printf("\n")
disp("Calculate the change in Ic produced by effect of Vbe changes over temperature of Voltage divider bias circuit")
printf("Given\n")
//given
Re=4.7*10^3
T1=25
T2=125
//change in temperature
delT=T2-T1
//change in Vbe
delVbe=delT*(-1.8*10^-3)  //change in Vbe for 1C raise in temperature=-1.8mV/C
//change in Ic
delIc=-delVbe/Re
printf("change in Ic %f ampere\n",delIc)