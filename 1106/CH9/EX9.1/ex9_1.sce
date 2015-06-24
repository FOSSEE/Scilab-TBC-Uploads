// Example 9.1, Page No-411
clear
clc

//Part 1
th1=acos(0)
th=th1*180/%pi
printf('Theta= + or - %d degree', th)

//Part 2
Vodc=4.47*4.47*cos(th1)/20
//For theta=+/-30 deg
Vodc1=cos(30*%pi/180)
printf('\nVodc for 30 degree= %.3f V', Vodc1)
//For theta=+/-45 deg
Vodc2=cos(45*%pi/180)
printf('\nVodc for 45 degree= %.3f V', Vodc2)
//For theta=+/-60 deg
Vodc3=cos(60*%pi/180)
printf('\nVodc for 60 degree= %.1f V', Vodc3)
