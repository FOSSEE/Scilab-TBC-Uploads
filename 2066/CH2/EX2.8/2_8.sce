clc
clear
//Initialization of variables
gam=0.0765 //lb/ft^3
l=40 //ft
w=16 //ft
d=8 //ft
z=6  //ft
BG=1 //ft
//calculations
I=1/12 *l*w^3
V=l*w*z
IVG=I/V - BG
MB=I/V
//results
printf("I/V -BG = %.2f ft ",IVG)
if IVG >0 then
    printf("\n Barge is stable")
else
    printf("\n The barge is unstable")
end
printf("\n Location of metacenter = %.2f ft above the center of buoyancy ",MB)
