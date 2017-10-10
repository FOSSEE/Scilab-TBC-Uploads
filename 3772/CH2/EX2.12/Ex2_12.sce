// Problem no. 2.12,Page no.38


clc;clear;
close;

//Rectangle
a_1=600 //cm**2 //Area of the Rectangle
y_1=15 //cm //C.G of Rectangle
b=20 //cm //width of rectangle
d=30 //cm //depth of rectangle
D=15 //cm //Diameter of circle

//Circle
a_2=176.7 //cm**2 //Area of the circle
y_2=20 //cm //C.G of the circle
 
//Calculation

Y_bar=((a_1*y_1-a_2*y_2)*(a_1-a_2)**-1) //cm //Distance of C.G From the AB
Y_bar_1=2.1 //cm
Y_bar_2=7.1 //cm

I_1=b*d**3*12**-1 //cm**4 //M.I of the rectangle about its C.G and parallel to x-x axis
I_2=I_1+a_1*Y_bar_1**2
I_3=%pi*D**4*64**-1+a_2*Y_bar_2**2 //cm**4 //M.I of circular section about x-x axis

I=I_2-I_3 //cm**4 //M.I of the section about x-x axis

//Result
printf("M.I of the section about x-x axis = %.2f cm^4",I)
