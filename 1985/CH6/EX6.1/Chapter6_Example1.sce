clc
clear
//Input data
f=1.5//Focal length of an achromatic combination of two lenses in contact in m
dp=[0.018,0.027]//Dispersive power of the materials of the lenses

//Calculations
f12=(dp(1)/dp(2))//Ratio of dispersive powers
f1=(1-(1/f))*f//Focal length of the first lens in m
f2=(f1/-f12)//Focal length of the second lens in m

//Output
printf('Focal length of the first lens is %3.1f m (convex lens) \n Focal length of the second lens is %3.2f m (concave lens)',f1,f2)
