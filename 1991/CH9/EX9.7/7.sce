clc
clear
//input
c=3*10^8 //velocity of speed
w=5.1*10^-7 //wavelength of green light
w1=0.7 //wavelength of radio waves
w2=1.3*10^-13 //wavelength of gamma
h=6.6*10^-34
//calculation
e1=h*c/w//plancks theory for greeen light
e2=h*c/w1//plancks theory for radio waves
e3=h*c/w2//plancks theory for gamma waves
//output
printf("energy carried by green light is %3.3e J",e1)
printf("\nenergy carried by radio waves is %3.3e J",e2)
printf("\nenergy carried by gamma waves is %3.3e J",e3)
