//To find angular velocities
clc
//Given:
TC=50, TD=20, TE=35
NA=110 //rpm
//Solution:
//Calculating the number of teeth on internal gear G
TG=TC+TD+TE
//Speed of shaft B:
//Calculating the values of x and y
//From the fourth row of Table 13.9, y-x*(TC/TD)*(TE/TG) = 0        .....(i)
//Also, x+y = 110, or y+x = 110                                     .....(ii)
A=[1 -(TC/TD)*(TE/TG); 1 1]
B=[0; 110]
V=A \ B
x=V(2)
y=V(1)
//Calculating the speed of shaft B
NB=round(+y) //Speed of shaft B, rpm
//Results:
printf("\n\n Number of teeth on internal gear G, TG = %d.\n\n",TG)
printf(" Speed of shaft B = %d rpm, anticlockwise.\n\n",NB)