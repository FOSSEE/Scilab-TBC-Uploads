clear
//Given
u1=1
u2=1.5
v=100                        //cm
R=20.0                        //cm
a=3
b=200.0

//Calculation
u1=(u2-u1)/R
u2=-1/(u1-(a/b))
d=-u2+R

//Result
printf("\n The object distance from the centre of curvature is %0.3f  cm", d)
