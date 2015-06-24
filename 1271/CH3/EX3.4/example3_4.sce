clc 
// Given that
Ip = %pi / 3 // polarizing angle of piece of glass for green light in radian
a = %pi / 3 // angle of prism in radian 
// Sample Problem 4 on page no. 3.24
printf("\n # PROBLEM 4 # \n")
mu = tan(Ip) // calculation for refractive index
delta_m = 2 * (asin(mu * sin(a / 2)) - (a / 2)) * (180 / %pi) // calculation for angle of minimum deviation
printf("\n Standard formula used \n mu = tan(Ip). \n delta_m = 2 * (asin(mu * sin(a / 2)) - (a / 2)) * (180 / pi). \n")
printf("\n Angle of minimum deviation = %f degree",delta_m)
