//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 19.9w
//calculation of the power of lens and maximum distance that can be seen clearly

//given data
u=-25*10^-2//object distance(in m)
v=-40*10^-2//image distance(in m)....i.e equal to near point distance
vdash=-250*10^-2//maximum distance(in m) that an unaided eye can see....i.e equal to far point distance

//calculation
f=1/((1/v)-(1/u))//focal length ....by using the lens formula
P=1/f//power of the lens
d=1/((1/vdash)-(1/f))//maximum distance for clear vision.... by using the lens formula

printf('the power of the lens is %3.1f D',P)
printf('\nthe maximum distance upto which,the person will be able to see clearly is %d cm',round(abs(d*10^2)))
