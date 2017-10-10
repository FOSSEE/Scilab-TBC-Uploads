clc;
//page 197
Tmin=300//lb
 Tmin = Tmin*[2/3 -1/3 2/3];
AC=[12 12 0]
w=[0;-450;0]
x1=AC*w
disp(x1)
x=[0 0 x1]
lambda=[2/3 2/3 -1/3]*[0;0;-x1]
y=x*lambda
disp(y)

//Location of G
//EG and Tmin are having same direction, so their component should be in proportion
x=-1.8/Tmin(3)*Tmin(1)+1.8;//m, X co-ordinate of G
y=-1.8/Tmin(3)*Tmin(2)+3.6;//m, Y co-ordinate of G
printf("Co-ordinates of G are x=%.0f m and y= %.1f m",x,y);