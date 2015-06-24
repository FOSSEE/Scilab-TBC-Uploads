// Estimating the limiting drawing ratio
clc

del_l = 0.23 // fractional change in length
del_t = -0.1 // fractional change in thickness
printf("\n Example 7.7")
l_ratio = (1+del_l)
t_ratio = (1+del_t)
w_ratio = 1/(l_ratio*t_ratio)

R = log(1/w_ratio)/log(1/t_ratio)
printf("\n\n For planar isotropy and from figure , R = %.3f\n we estimate LDR to be 2.4",R)

