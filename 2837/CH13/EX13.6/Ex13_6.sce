clc
clear
//Initialization of variables
x1=0.885 //mole fraction of Ch4
x2=0.115 //mole fraction of c2h6
x3=0.4/100 //mole fraction of N2
n1=2 //Moles of Ch4
n2=3.5 //Moles of c2h6
n3=1 //moles of ch4 in case 2
n4=2 //moles of c2h6 in case 2
//calculations
y1=n1*x1
y2=n2*x2
y=y1+y2
vec2=[y1 y2]
air=y/0.21
y3=n3*x1
y4=n4*x2
yy=y3+y4
vec3=[y3 y4]
air2=y/0.21 *0.79
//results
printf("Theoretical air = %.2f moles of air per mole of fuel",air)
disp("Oxygen analysis")
disp(vec2)
printf("\n Amount of nitrogen = %.2f moles of nitrogen per mole of fuel",air2)
disp("Dry analysis")
disp(vec3)
printf('total = %.3f moles',yy)
