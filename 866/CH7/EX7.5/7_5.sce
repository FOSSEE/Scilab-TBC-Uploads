clc
//initialisation of variables
x1= 4
x2= %pi/x1
L= 400 //mm
h= 5 //m
d=20 //mm
W= 1000*10^3 //KN
Ys= 200000 //N/mm^2
Yc= 15000 //N/mm^2
//CALCULATIONS
As= x1*x2*(d^2)
Ac= L^2-As
sigmas= (Ys*W)/(Ac*Yc+As*Ys)
sigmac= (Yc*W)/(Ac*Yc+As*Ys)
delta= (sigmac*h*10^3)/(Yc)
//RESULTS
printf ('As= %.f mm^2',As)
printf (' \n Ac=% f mm^2',Ac)
printf (' \n sigmas=%.f N/mm^2(stress in the steel)',sigmas)
printf (' \n sigmac=%.1f N/mm^2(stress in the concrete)',sigmac)
printf (' \n delta;=%.1f mm(shortening of the column)',delta)

