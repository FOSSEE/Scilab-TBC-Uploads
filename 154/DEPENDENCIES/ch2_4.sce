clc
disp("Example 2.4")
printf("\n")
printf("Given")
disp("Current through diode is 30mA")
//From the table the nearest value is at v=0.74V
V=0.74;I=28.7*10^-3;
R=V/I;
delV=0.75-0.73
delI=42.7*10^-3-19.2*10^-3
r=delV/delI
p=(V*I)*10^3
printf("\n \n Static resistance is %3.2fohm\n",R)
printf("Dynamic resistance is %3.2fohm\n",r)
printf("Power consumption is %3.2fmW\n",p)


