//CHAPTER 2 ILLUSTRATION 3 PAGE NO:58
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//==============================================================================
//input
d1=30//diameter of 1st shaft in cm
d2=50//diameter 2nd shaft in cm
pi=3.141
c=500//centre distance between the shafts in cm
//==============================================================================
//calculation
L1=((d1+d2)*pi/2)+(2*c)+((d1+d2)^2)/(4*c)//lenth of cross belt
L2=((d1+d2)*pi/2)+(2*c)+((d1-d2)^2)/(4*c)//lenth of open belt
r=L1-L2//remedy
//==============================================================================
//OUTPUT
printf('length of cross belt is %3.3fcm \n length of open belt is %3.3f cm \n the length of the belt to be shortened is %3.0f cm',L1,L2,r)
