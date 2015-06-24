clc
e1=230           //Assigning values to parameters
v1=e1
i0=5
t=acosd(0.25)
n1=200
f=50
fm=e1/(4.44*f*n1)
w1=v1*i0*cosd(t)
iu=i0*sind(t)
disp("Wb",fm,"The maximum flux is");
disp("Watts",w1,"The core loss is");
disp("Amperes",iu,"The maximum current is");