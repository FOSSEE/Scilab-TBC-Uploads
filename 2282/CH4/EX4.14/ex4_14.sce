// Example 4.14, page no-155
clear
clc
c=3*10^8   //speed of light 
f=2.5*10^9 //operating frequency
s=0.1      //inter element spacing
theta =10  //10° right towards array axis
l=c/f
fi=(360*s/l)*ceil(10000*sind(theta))/10000
fi=ceil(10*fi)/10
printf("The phase angle for elements 1,2,3,4 and 5 \n are respecively 0°,%.1f°,%.1f°,%.1f° and %.1f°",fi,2*fi,3*fi,4*fi)
