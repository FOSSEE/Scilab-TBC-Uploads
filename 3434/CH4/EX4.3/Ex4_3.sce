// given data
clc

a=0.25 // constant for delhi from table 4.1 
b=0.57 // constant for delhi from table 4.1 
pi=27.166 // latitute in degrees
n=17 // day
nbar=7 // sunshine hours

dlta=23.45*(sind((360.0*(284.0+n)/365.0))) // in degree

wt=acosd((-tand(pi)*(tand(dlta)))) // hour angle at sunrise
Nbar=(2*(wt)/15.0)// day length

Ho=3600*(24.0/%pi)*1.367*(1+0.033*cosd((360.0*n/365)))*(cosd(pi)*cosd(dlta)*sind(wt)+1.3728*sind(dlta)*sind(pi)) // in kj/m^2 per day

Hg=Ho*(a+b*(nbar/Nbar))  // in kj/m^2 per day
printf("The monthly average is %.2f in kj/m^2 per day",Hg)

// the answer in the book is slightly different due to approximations
