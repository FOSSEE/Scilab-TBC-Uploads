clc
clear
//input
fc=50//force applied by magnet
x=90-20 //angle of force
//calculation
fb=fc*sind(70)//force due to b
fa=fc*cosd(70)//force due to a
//output
printf("the force due to b is %3.3f N",fb)
printf("\nthe force due to b is %3.3f N",fa)
