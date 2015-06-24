clc
//Example 7.12
//Calculate the final velocity of a rocket after launch
Isp=430//lbf.s/lbm specific impulse
v_initial=0//m/s
//1 lbf.s^2 = 32.2 lbm.ft
Vrel_out=-Isp*32.2//ft/s
ratio_m=0.1//dimentionless (ratio of final mass to initial mass)
v_final=Vrel_out*log(ratio_m)//ft/s
printf("The velocity of the rocket after launch is %f ft/s",v_final);