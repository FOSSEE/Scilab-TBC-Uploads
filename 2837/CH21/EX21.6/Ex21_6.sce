clc
clear
//Initalization of variables
h1=1416.4
s1=1.6842
sf=1.7319
sfg=1.3962
fac=1.05
x2=0.7
//calculations
x6=-(s1-sf)/sfg
h6=1156.3 - x6*960.1
dh6=h1-h6
drop= fac*h6/2
h2=h1-drop
first=(1-x2)*drop
h3=1264.1 +first
h4=1157 //Btu/lb
fac2=(drop+153)/dh6
disp("From air charts,")
p2=107 //psia
//results
printf("Intermediate pressure = %d psia",p2)
