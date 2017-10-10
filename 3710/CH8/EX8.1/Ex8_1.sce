//Example 8.1, Page Number 364
//The Function fpround(dependency) is used to round a floating point number x to n decimal places
//Field Decay Factor Calculation
clc;
clear all;

n1=1.5 //Refraction index of glass/air interface
n2=1 //Refraction index of air

c1=1*2*3.14*n2
a=60//given
d=(a*(%pi/180))
a1=(sin(d))**2  //By equation 8.8
a2=(n1/n2)**2
a3=(a1*a2)-1
a4=sqrt(a3)
a5=a4*c1

//assuming wavelength = field distance
F=exp(-1*a5) //F is the field decay factor
disp(F,"The Field Decay factor at 60 degrees is:")

//at theta1=42 degrees
c1=1*2*3.14*n2
//disp(c1)
a=42//given
d=a*(%pi/180)
b1=(sin(d))**2 //By equation 8.8
b2=(n1/n2)**2
b3=(b1*b2)-1
b4=sqrt(b3)
c4=b4*c1

//assuming wavelength = field distance
F1=exp(-1*c4)//F1 is the field decay factor at 42 degrees
F1=fpround(F1,3)

disp(F1," The Field Decay factor at 42 degrees is:")
