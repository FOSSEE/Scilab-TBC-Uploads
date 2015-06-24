clc
//Example 12.4
//Calculate the line current
//Continuing from example 12.3
Vp=300/sqrt(3);
IL=2.89;pf=0.8
disp('A balanced 600W lighting load is added in parallel with the existing load')
disp('600W if balanced then 200W will be consumed by each phase')
Vpadd=200;
//From figure 12.17
I1=Vpadd/Vp
disp('Load current is unchanged')
I2mag=IL
I2ph=(acos(pf)*180)/%pi
x=I2mag * cos (( I2ph * %pi ) /180) ;
y=I2mag * sin (( I2ph * %pi ) /180) ;
z= complex (x,y)
disp(z)
ILnew=I1+z
[ILmag ILph]=polar(ILnew)
printf("Line current=%3.2f /_%3.2f deg A \n ",ILmag,ILph*(180/%pi));