//To find velocity ratio
clc
//Given:
T1=80, T8=160, T4=100, T3=120, T6=20, T7=66
//Solution:
//Refer Fig. 13.19 and Table 13.14
//Calculating the number of teeth on wheel 2
T2=(T3-T1)/2
//Calculating the values of x and y
//Assuming that wheel 1 makes 1 rps anticlockwise, x+y = 1            .....(i)
//Also, y-x*(T1/T3) = 0, or x*(T1/T3)-y = 0                           .....(ii)
A=[1 1; 1 T1/T3]
B=[1; 0]
V=A \ B
x=V(1)
y=V(2)
//Calculating the speed of casing C
NC=y //Speed of casing C, rps
//Calculating the speed of wheel 2
N2=y-x*(T1/T2) //Speed of wheel 2, rps
//Calculating the number of teeth on wheel 5
T5=(T4-T6)/2
//Calculating the values of x1 and y1
y1=-2
x1=(y1-0.4)*(T4/T6)
//Calculating the speed of wheel 6
N6=x1+y1 //Speed of wheel 6, rps
//Calculating the values of x2 and y2
y2=0.4
x2=-(14+y2)*(T7/T8)
//Calculating the speed of wheel 8
N8=x2+y2 //Speed of wheel 8, rps
//Calculating the velocity ratio of the output shaft B to the input shaft A
vr=N8/1 //Velocity ratio
//Results:
printf("\n\n Velocity ratio of the output shaft B to the input shaft A = %.2f.\n\n",vr)