clc 
clear
//input
v=30 //velocity of speedboat
vw=40 //velocity of wind
//calculation
x=(30/40)//angle between original velocity of boat and resultant velocity
y=atand(x)//applying trigonometry
b=90+y//bearing of boat
//output
printf("the bearing of speedboat is %3.3f deg",b)
