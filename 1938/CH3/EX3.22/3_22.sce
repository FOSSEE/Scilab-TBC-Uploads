clc,clear
printf('Example 3.22\n\n')

I_avg=10
V_avg=(220+190)/2 //average voltage across load
W_dash = V_avg*I_avg  //power  absorbed
t_1=30,t_2=20
W=W_dash * (t_2/(t_1-t_2)) //stray losses
printf('Stray losses of motor is %.1f kW\n\n\n',W/1000)
printf('Answers mismatch because V_average is 205 volts but it is taken as 220 volts in Power absorbed calculation')
