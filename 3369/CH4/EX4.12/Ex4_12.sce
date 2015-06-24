//Chapter 4, Exmaple 12, page 146
//Travel time and maximum frequency
clc
clear
//(a)Determine the travel time
Ea = 200*sqrt(2)*10**3/0.1
x = 1.4*10**-4*2828.4*10**3/(2*%pi*50)
d = 0.1
printf("\n Ea = %e V/m",Ea)
printf("\n x = %f*sin(3.14*t)",x)
//obtaining t from x
t = asin(d/x)/3.14
printf("\n t = %f ms",t) // answer mentioned in the text is wrong
//(b)Determine the maximum frequency
k = 1.4*10**-4
fmax = k*Ea/(2*%pi*d)
printf("\n fmax = %f Hz",fmax)

//Answer may vary due to round off error
