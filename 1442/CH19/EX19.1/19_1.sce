clc
//initialisation of variables
pN2= 79 //percent
VN2= 82.3 //m^3
VCO2= 8 //m^3
VCO= 0.9 //m^3
M= 32 //gms
M1= 28 //gms
//CALCULATIONS
P= (pN2/(100-pN2))
z= VN2/P
x= VCO2+VCO
w= VCO2+(VCO/2)+(VCO2/10)
y= 2*w
r= y/x
TO= x+(y/4)
X= (z/TO)-1
AF= z*(M+P*M1)/(12*x+y)
//RESULTS
printf (' fuel ratio= %.3f  ',r)
printf (' \n excess air= %.3f  ',X)
printf (' \n emass air-fuel ratio= %.2f  ',AF)
