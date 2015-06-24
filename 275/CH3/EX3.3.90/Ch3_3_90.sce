clc
disp("Example 3.90")
printf("\n")
disp("Calculate the change in Ic produced by effect of Vbe changes over temperature of Voltage divider bias circuit")
printf("Given\n")
//given
Re=4.7*10^3
T1=-35
T2=100
//change in temperature
delT=T2-T1
//change in Vbe
delVbe=delT*(-1.8*10^-3)  //change in Vbe for 1C raise in temperature=-1.8mV/C
//change in Ic
delIc=-delVbe/Re
printf("The change in IC is \n%f ampere\n",delIc)
