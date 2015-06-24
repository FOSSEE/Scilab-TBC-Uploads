clc
clear

//INPUT
t1=283;//temperature of bulb when pressure is h-2cm of hg in k
t2=546;//temperature of bulb when pressure is h-22cm of hg in k
h1=2;//differnce of mercury level at 283k in cm
h2=22;//differnce of mercury level at 546k in cm
//let h is the barometer height,then h-2cm at 283k and h-22 at 546k

//CALCULATIONS
h=((h2*t1)+(h1*t2))/(t2-t1);//height of the barometer in cm

//OUTPUT
mprintf('height of the barometer is %3.2f cm',h)
