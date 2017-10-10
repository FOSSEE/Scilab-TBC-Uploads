
clear//

//Variable Declaration
t=20 //Thickness in mm
h=140 //Depth in mm
w=180 //Width in mm

//Calculations
Ixy_1=0+(h*t*t*0.5*h*0.5) //product of inertia in mm^4
Ixy_2=0+((w-t)*t*(w+t)*0.5*t*0.5) //Product of inertia in mm^4
Ixy=Ixy_1+Ixy_2 //Product of inertia in mm^4

//Result
printf("\n The Product of inertia is %0.0f mm^4",Ixy)
