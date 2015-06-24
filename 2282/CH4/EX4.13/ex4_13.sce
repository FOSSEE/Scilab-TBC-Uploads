// Example 4.13, page no-155
clear
clc
f=2.0          //reflector focal length
d=2.0          // reflector diameter
l=90/100       //90% of the angle 
theta=4*(atand(1/(4*f/d)))
theta=4*atand(0.25007)    // this value gives exact answer as in book
dbw=l*theta
printf("The angle subtended by the focal point feed\n at the edges of the reflector is, theeta = %.2f°\n\n 3dB beam width = %.2f°\n null-to-null beam width = % .2f°",theta,dbw,floor(200*dbw)/100)
