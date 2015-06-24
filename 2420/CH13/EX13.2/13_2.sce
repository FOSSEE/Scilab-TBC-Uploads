clc
clear
//Initialization of variables
mr=3 //lb
mj=5 //lb
t2=67 //F
t1=60 //lb
ihp=7.25
//calculations
disp("From mollier charts,")
h4=709 //Btu/b
h3=618 //Btu/lb
energyin=ihp*2545/60
energyout=mr*(h4-h3) + mj*(t2-t1)
//results
printf("Energy in = %.1f Btu/min",energyin)
printf("\n Energy out = %.1f Btu/min",energyout)
