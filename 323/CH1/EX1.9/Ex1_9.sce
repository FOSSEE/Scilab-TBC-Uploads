//Chapter 1, Example 1.9,Pg 1.13
clc;
disp("We know that Rt = R0(1+a0*t)")
disp("At t1=20 degree C, R1=18 ohms")
disp("18=R0(1+20*a0)")
disp("At t2=50 degree C R2=20 ohms")
disp("20=R0(1+50a0)")
a0=20-18/(900-400) //Divide both the equations
printf("\n a0=%.3f per degree c \n",a0)
t=(21+1.68-18)/0.072
printf("\n Therefore temp t = %.0f degrees C \n",t)

