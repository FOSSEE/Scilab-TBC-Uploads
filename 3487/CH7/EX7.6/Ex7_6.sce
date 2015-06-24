//Chapter 7,Example 7.6 Page 228
clc
clear
e0 = 50
x = 50
R = 6
Z = 400
v = 3*10^5
//(i)Value of the voltage wave when it has travelled through a distance of 50 km
pow = (-1/2)*(6/400)*50
e = e0*exp(pow)
//(ii)The power loss and the heat loss
PL = e^2*1000/Z // power loss
t = x/v
i0 = e0*1000/Z
HL = -x*i0*Z*(exp(-0.75)-1)/(R*v) // Heat loss
printf (" e = %f kV \n",e)
printf (" Power loss = %f kW \n",PL)
printf (" Heat loss = %f kJ \n",HL)

// Answers may vary due to round off error
