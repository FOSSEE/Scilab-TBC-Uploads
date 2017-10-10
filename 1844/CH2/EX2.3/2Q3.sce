clc
//Intialising variables
x=5.367
y=4.88
x1=0.005 //Maximum error in x
y1=0.0005 //Maximum error in y
ex=0.0025 //Probable error in x
ey=0.00025 //Probable error in y

sn1= x-y + (x1+y1)
sn2= x-y -(x1+y1)

e= sqrt(ex^2+ey^2)
sn3= x-y +e
sn4=x-y - e
printf('Hence the most probable error = +/- %f\n',e)
printf('The most probable limits of quantity s are %f',sn3)
printf(' and %f\n',sn4)
printf('The maximum limits of quantity are %f',sn1)
printf(' and %f',sn2)
