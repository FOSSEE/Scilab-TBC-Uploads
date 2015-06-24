// increase in tool life by reducing the cutting speed
clc
n = 0.5 // Exponential factor
C = 400 // Constant
v_ratio = 0.5 // velocity 
printf("\n Example 8.3")
t_ratio = (1/v_ratio)^(1/n) // From Tylor's equation V*T^n = constant
del_t = t_ratio -1
printf("\n On making velocity to %.1f times of initial, \n Increase in life time is %d%%.",v_ratio,del_t*100)

