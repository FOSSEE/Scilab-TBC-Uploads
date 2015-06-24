clc
//initialisation of variables
p1=20//kg
p2=25//kg
p3=30//kg
p4=40//kg
alf1=70//degree
alf2=30//degree
alf3=20//degree
alf4=60//degree
//CALCULATIONS
Rx=-p1*cosd(alf1)+p2*cosd(alf2)+p3*cosd(alf3)-p4*cosd(alf4)//kg
Ry=-p1*sind(alf1)-p2*sind(alf2)+p3*sind(alf3)+p4*sind(alf4)//kg
R=sqrt((Rx)^2+(Ry)^2)//kg
Tan=Ry/Rx//degree
//RESULTS
printf('The angle of horizontal axis=% f kg',Tan)
