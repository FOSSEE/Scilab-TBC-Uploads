//Example 1_3
clc();   
clear;
//To subtract vector B from Vector A
Ax=8.7  //units in meters
Ay=5   //units in meters
Bx=-6   //units in meters
By=0   //units in meters
Rx=Ax-Bx     //units in meters
Ry=Ay-By      //units in meters
R=sqrt(Rx^2+Ry^2)    //units in meters
theta=round(atan(Ry/(Rx))*180/%pi)    //units in degrees
printf("Resultant R=%.1f Meters\n",R)
printf("Angle Theta=%d Degrees",theta)
