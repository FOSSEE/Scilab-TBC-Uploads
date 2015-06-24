clc
clear
//Input data
r1=[0,1]//Interval in m
r2=[1,2]//Interval in m
r3=[2,4]//Interval in m
r4=[0,5]//Interval in m
y=[6,12]//Y- coordinates from the graph 2.5 on page no. 27

//Calculations
a1=(1/2)*(r1(2)-r1(1))*y(1)//Area under the curve in J
a2=(r2(2)-r2(1))*y(1)//Area under the curve in J
a3=((r3(2)-r3(1))*y(1))+((1/2)*((r3(2)-r3(1))/2)*(y(2)-y(1)))+(((r3(2)-r3(1))/2)*(y(2)-y(1)))//Area under the curve in J
a4=(a1+a2+a3+((1/2)*y(2)*(r4(2)-r3(2))))//Area under the curve in J

//Output
X=[0,1,2,3,4,5]//X- coordinate is distance in m
Y=[0,6,6,12,12,0]//Y- coordinate is Force in N
plot(X,Y)//Graph shown in figure 2.5 on page no.27
xtitle('Distance versus Force','Distance in m','Force in N')

printf('The work done in the intervals: \n (a)%i<=x<=%i m is %i J \n (b)%i<=x<=%i m is %i J \n (c)%i<=x<=%i m is %i J \n (d)%i<=x<=%i m is %i J \n',r1(1),r1(2),a1,r2(1),r2(2),a2,r3(1),r3(2),a3,r4(1),r4(2),a4)
