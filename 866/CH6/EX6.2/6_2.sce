clc
//initialisation of variables
W= -10 //KN/m
Yac= 7 //m
xad= -7.5 //m
xac= -15 //m
xcb= 10 //m
//CALCULATIONS
k= Yac/((xac)^2)
yb= k*(xcb)^2
hb= Yac-yb
yd= k*(xad)^2
hd= Yac-yd
A=[(xcb-xac),(hb);(xcb),(-yb)]
b=[-W*(-xac)*(-xad);0]
c= A\b
Rbv= c(1,1)
Rbh= c(2,1)
Rah= Rbh
Rav= -Rbv-W*(-xac)
dybydx= 2*k*xad
alpha= atand(-2*k*xad)
Nd= -Rav*sind(alpha)-Rah*cosd(alpha)+((-W)*(-xad)*sind(alpha))
Sd= -Rav*cosd(alpha)+Rah*sind(alpha)+((-W)*(-xad)*cosd(alpha))
Md= Rav*(-xad)-Rah*hd+W*(-xad)*(-xad/2)
//RESULTS
printf ('Normal force= %.2f kN',Nd)
printf ('\n  Shear force=%.2f KN',Sd)
printf (' \n Bending moment=%.1f KNm',Md)
