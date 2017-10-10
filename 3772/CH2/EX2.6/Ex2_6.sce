// Problem no 2.6,Page no.34

clc;clear;
close;

b_1=10 //cm //Breadth of the triangle
h=9 //cm //Height of triangle
b_2=2 //cm //width of rectangle
d=3 //cm //Depth of rectangle

//Triangle ABC-1
a_1=45 //cm**2 //Area of triangle
y_1=3 //cm //C.G of triangle

//Rectanglar hole-2
a_2=6 //cm**2 //Area of rectangle
y_2=4.5 //cm //C.G of rectangle

//Calculations

//Using relations
Y_bar=((a_1*y_1-a_2*y_2)*(a_1-a_2)**-1) //cm

I_1=b_1*h**3*36**-1+a_1*(y_1-Y_bar)**2 //cm**4 //M.I of triangle ABC about x-x passing through C.G of section
I_2=b_2*d**3*12**-1+a_2*(y_2-Y_bar)**2 //cm**4 //M.I of rectangular hole about x-x passing through C.G of section
I=I_1-I_2 //cm**4 //M.I of whole section about x-x passing through the C.G 

I_3=b_1*h**3*12**-1 //cm**4 //M.I of triangle ABC about the base BC
I_4=b_2*d**3*12**-1+a_2*y_2**2 //cm**4 //M.I of Rectangular hole about the base BC

I_5=I_3-I_4 //cm**4 //M.I of the whole section about the base BC

//Result
printf("M.I of whole section about x-x passing through the C.G = %.2f cm^4",I)
printf("\n M.I of the whole section about the base BC is %.2f cm^4",I_5)
