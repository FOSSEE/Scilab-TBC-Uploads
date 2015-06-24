clc
disp("Example 4.80")
printf("\n")
disp("determine the suitable value of load resistor Rd of JFET")
printf("Given\n")
//voltage gain
Av=10
//transconductance
gm=4500*10^-6
//load resistance
Rd=Av/gm
printf("load resistance \n%f ohm \n",Rd)
