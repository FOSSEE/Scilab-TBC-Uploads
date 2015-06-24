clc
disp("Example 2.5")
printf("\n")
printf("Given")
disp("a)")
disp("Current through diode is 10mA")
//From the table the  value is at v=2.5V
V=2.5;I=10*10^-3;
R=V/I;
delV=3-2
delI=11*10^-3-9*10^-3
r=delV/delI
p=(V*I)*10^3
printf("\n \n Static resistance is %3.2fohm\n",R)
printf("Dynamic resistance is %3.2fohm\n",r)
printf("Power consumption is %3.2fmW\n",p)

disp("b)")
disp("Current through diode is 15mA")
//From the table the  value is at v=5V
V=5;I=15*10^-3;
R=V/I;
delV=5.5-4.5
delI=16*10^-3-14*10^-3
r=delV/delI
p=(V*I)*10^3
printf("\n \n Static resistance is %3.2fohm\n",R)
printf("Dynamic resistance is %3.2fohm\n",r)
printf("Power consumption is %3.2fmW\n",p)