clc
disp("Example 6.31")
printf("\n")
disp("calculate output voltage for given specification")
printf("given")
disp("Rf=360k,R1=120k,Vi=0.5,0.6sin314t,-0.3")
Rf=360*10^3
R1=120*10^3
Af=1+(Rf/R1)
t=0 //initialise t value
Vi=[0.5, 0.6*cos(314*t),-0.3]
Vo=Af*Vi //calculate output voltage
printf("output voltage =%f volt,\n%f volt,\n%f volt",Vo)
