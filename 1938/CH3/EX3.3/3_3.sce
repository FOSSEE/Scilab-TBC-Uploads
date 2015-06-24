clc,clear
printf('Example 3.3\n\n')

//no load
I=14 //input current
V=230
power_output_FL = 45*10^3
power_input=V*I
I_sh=2.55 //field current
R_a=0.032 //armature resistance
I_a=I-I_sh
cu_loss_NL = I_a^2*R_a //no load copper loss
brush_loss=2*I_a
constant_loss= power_input - cu_loss_NL - brush_loss

//full load

//I=I_a+ 2.55
//Motor input= Motor output + constant loss + brush loss + cu loss
// solving for I_a , I_a^2 - 7125 I_a + 1487700.3 =0
p=[1 -7125 1487700.3]
roots(p)
I_a=ans(2) //ignoring second root as its too large
I=I_a+I_sh
printf('Full load current is %.2f A\n',I)
power_input=V*I
eta=100*(power_output_FL/power_input)
printf('Efficiency at full load is %.2f percent',eta)
