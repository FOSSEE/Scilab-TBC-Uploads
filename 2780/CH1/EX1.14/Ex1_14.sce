clc
//to calculate velocity in the laboratory frame
c=3*10^8 //light speed (m/s)
v=0.8*c //velocity relative to laboratory along positive direction of x-axis
//given that u'=3 i+4 j+12 k (m/s)
ux1=3 //in (m/s)
uy1=4 //in (m/s)
uz1=12 //in (m/s)
ux=(ux1+v)/(1+v*ux1/c^2)
uy=(uy1*sqrt(1-(v/c)^2))/(1+v*ux1/c^2)
uz=(uz1*sqrt(1-(v/c)^2))/(1+v*ux1/c^2)
disp("u=ux i+uy j+uz k")
disp("where")
disp("ux="+string(ux)+"m/s")
disp("uy="+string(uy)+"m/s")
disp("uz="+string(uz)+"m/s")
