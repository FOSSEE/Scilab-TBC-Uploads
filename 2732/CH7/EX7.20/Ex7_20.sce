clc
//initialization of new variables
clear
t=1 //cm
a=40 //cm
A=236
// calculations
ybar=a*t*0.5+(50-1)*4*0.5/(a*t+(50-1)*4)
y1bar=1.25*a-ybar
IAA=a*t^3/3+(50-1)^3*4/12+(50-1)*4*25.5^2
Io=IAA-A*ybar^2
//part (1)
r=y1bar/ybar
// results
printf('Ratio of maximum bending stress in the stem and flange')
printf('\n Ratio = %.2f',r)
//part(2)
// calculations
r=(2/3*388*29.56)-(2/3*160*20.44)-(228*20.44)
r=r/(2*2/3*388*29.56)
// results
printf('\n Ratio of S.F in flange to total S.F')
printf('\n Ratio = %.2f percent',r*100)
// part (3)
// calculations
r=359*200/Io
// results
printf('\n Ratio of maximum shear stress in the flange to average sher stress in the stem')
printf('\n Ratio = %.2f ',r)
//part (4)
// calculations
s=10 //m
r=r/0.922
sigma=1650 //kg/cm^2
shear=945 //kg/cm^2
wsh=2*200*shear/(r*s)
wsi=8*Io*sigma/(s^2*10*29.56)
w=min(wsh,wsi)
// results
printf('\n Maximum u.d.l. = %d kg/m ',w)

//wrong moment of Inertia (Io) in the text and hence part (3) and part (4) are wrong
