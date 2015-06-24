clear all; clc;

disp("1.Convert the system specification to Qdash=10000cfm with the correesponding total pressure loss")
delta_p_ldash=0.5*((10000/5000)^2)
printf("\n delta(pl)dash= %0.0f in.wg.",delta_p_ldash)

disp("2. Draw a system line(which is a straight line with slope of 2 on a log-log chart)passing this point and intercept at 700rpm")

disp("Read the operating condition as Q=11000cfm,deltap=2.51 in.wg. and Ps=5.6hp")
