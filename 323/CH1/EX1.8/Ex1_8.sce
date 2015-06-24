//Chapter 1,Example 1.8,Pg 1.12
clc;
disp("We know that R1 = R0(1+a0t)")
disp("At t1=20 degree C, R1=45 ohms")
R0=45/(1+0.004*20)
disp("At t2, R2=48.5 ohms")
disp("Therefore, we can calculate t2 as follows")
disp("45/48.5 = (1+0.004*20)/(1+0.004t2)")
t2=(48.5-R0)/(0.004*R0)
printf("\n Therefore t2= %.0f degree C \n",t2)
