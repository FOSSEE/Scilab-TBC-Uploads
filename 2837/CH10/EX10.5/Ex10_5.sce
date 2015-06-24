clc
clear
//Initialization of variables
disp("From table 2 of keenan and keynes,")
p1=1 //in of Hg
s=1.9812 
//calculations
sf=2.0387
sfg=1.9473
y=-(s-sf)/sfg
//results
printf("The state is %d in of Hg with a moisture content of %.2f percent",p1,y*100)
