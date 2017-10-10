// Problem no 2.1,Page no.29


clc;clear;
close;
 
//Rectangle-1
b_1=10 //cm //width of Rectangle-1
d_1=2 //cm //breadth of Rectangle-1
a_1=40 //cm**2 //Area of Rectangle-1
y_1=1 //cm //Distance of centroid-1

//Rectangle-2
b_2=2 //cm //width of Rectangle-2
d_2=10 //cm //breadth of Rectangle-2
a_2=20 //cm**2 //Area of rectangle-2
y_2=7 //cm //Distance of centroid-2

//Rectangle-3
b_3=20 //cm //width of Rectangle-3
d_3=2 //cm  //breadth of Rectangle-3
a_3=20 //cm**2 //Area of rectangle-3
y_3=13 //cm //Distance of centroid-3



//Calculation
Y_bar=((a_1*y_1+a_2*y_2+a_3*y_3)*(a_1+a_2+a_3)**-1) //cm //centre of gravity of section

Y_1=4.5 //cm //Distance of centroid of rectangle 1 to C.G
Y_2=1.5 //cm //Distance of centroid of rectangle 2 to C.G
Y_3=7.5 //cm //Distance of centroid of rectangle 3 to C.G

I_x_x_1=b_1*d_1**3*12**-1+a_1*Y_1**2 //moment of inertia of rectangle 1 about centroidal x-x axis of the section
I_x_x_2=b_2*d_2**3*12**-1+a_2*Y_2**2 //moment of inertia of rectangle 2  about centroidal x-x axis of the section
I_x_x_3=b_3*d_3**3*12**-1+a_3*Y_3**2 //moment of inertia of rectangle 3 about centroidal x-x axis of the section
I_x_x=I_x_x_1+I_x_x_2+I_x_x_3 //cm**4 

//Result
printf("Moment of Inertia of the section is %.2f cm^4",I_x_x)
