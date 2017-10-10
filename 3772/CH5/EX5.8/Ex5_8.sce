// Problem 5.8,Page no.127

clc;clear;
close;

L=3 //m //span of beam
t=20 //mm //Thickness of steel
D=200 //mm //overall depth 
B=140 //mm //overall width
b=100 //mm //width of inner rectangle
d=160 //mm //depth of inner rectangle
w=77 //KN/mm**2
sigma=100 //N/mm**2 //Bending stress
//Calculations
V=((D*10**-3*B*10**-3)-(d*10**-3*b*10**-3)) //m**3 //Volume of rectangular box
W=V*3*w //KN //Weight of Beam
I=(B*D**3-b*d**3)*12**-1 //mm**4 //M.I of beam section

//Now using the relation,M*I**-1=sigma*y**-1

y=200 //mm //distance from farthest fibre
M=I*sigma*2*y**-1 //N*mm

//M=3000*W+2772*3000*2**-1
//After sub values in above equation we get

W=((59.2*10**6-2772*3000*2**-1)*(3000)**-1)*10**-3 //KN //Max concentrated Load at free end

F=W+2.772*2**-1 //KN //shear force at half length

//Result
printf("The shear force at half length is %.2f kN",F)
