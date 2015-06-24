clc
//initialisation of variables
clear
ari= 62 //degrees
aro= 125 //degrees
vri= 1200 //ft/sec
vro= 1294 //ft/sec
vrr= 550 //ft/sec
//CALCULATIONS
v1= vri*sind(ari)
v2= vrr+vri*cosd(ari)
vi= sqrt(v1^2+v2^2)
ai= atand(v1/v2)
vo= vro*sind(aro)
vo1= vro*cosd(aro)+vrr
vo2= sqrt(vo^2+vo1^2)
ao= atand(vo/vo1)+180
//RESULTS
printf ('absolute velocity = %.f ft/sec',vi)
printf ('\n direction = %.1f degrees',ai)
printf ('\n absolute velocity = %.f ft/sec',vo2)
printf ('\n direction = %.1f degrees',ao)
