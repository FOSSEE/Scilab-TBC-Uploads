clc
//Given that
v_w_x = 40 * cos(45 * %pi / 180) // x component of wind blow in miles/h
v_w_y = 40 * sin(45 * %pi /180) // y component of wind blow in miles/h
r_x = 200 // distance  of destination point in x direction in miles
r_y = 0 // distance  of destination point in y direction in miles
t = 40 // time taken by aeroplane to reach destination in minutes
// sample Problem 4  Page No. 177
printf("\n # Problem 4 # \n")
printf("Standard formula used is V = V1 + V2 + .....+ V_n \n ")
v_x = (r_x)/t *60 // x - component of velocity  required to reach destination in time in miles/h
v_y = r_y /t *60 // x - component of velocity  required to reach destination in time in miles/h 
v_p_x = v_x - v_w_x // x component of aeroplane velocity in miles/h
v_p_y = v_y - v_w_y // y component of aeroplane velocity in miles/h
printf(" \n Vector of velocity of pilot with respect to moving air is %f i %fj miles/h \n where i and j stands for east and north respectively ", v_p_x,v_p_y)

