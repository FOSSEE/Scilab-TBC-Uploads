clc
//initialisation of variables
clear
bi= 70 //degrees
i= 8 //degrees
bo= 130 //degrees
s= 5 //degrees
vi= 1200 //ft/sec
g= 32.2 //ft/sec^2
a= 0.48
s1= 1.4 //in
b= 5 //in
Cx= 0.06
//CALCULATIONS
O= bo-s-bi+i
Vo= vi*sind(bi-i)/sind(bo-s)
Fy= -a*vi*sind(bi-i)*(s1/12)*(b/12)*(Vo*cosd(bo-s)-vi*cosd(bi-i))/g
dp= a*(Vo^2*(1+Cx)-vi^2)/(2*g)
//RESULTS
printf ('Fluid deflection angle = %.f degrees',O)
printf ('\n Vo = %.f ft/sec',Vo)
printf ('\n Force on each blade = %.f lbf',Fy)
printf ('\n Pressure difference = %.f lbf/ft^2',dp)
