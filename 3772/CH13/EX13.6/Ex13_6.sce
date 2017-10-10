// Problem no 13.6,Page No.305

clc;clear;
close;

F=5*10**3 //N //shea Force
b=20 //cm //width of Flange
t=6 //cm //Thickness of flange
w_d=20 //cm //depth of web
w_t=6 //cm //thickness of web
X=700 //N //Shear Looad

//Calculations

a_1=b*t //cm**2 //Area ofFlange
a_2=w_d*w_t //cm**2 //Area of web
y_1=t*2**-1 //cm //C.G of Flange
y_2=t+w_d*2**-1 //cm //C.G of Web

Y=(a_1*y_1+a_2*y_2)*(a_1+a_2)**-1

//M.I about N.A
I=b*t**3*12**-1+b*t*(Y-y_1)**2+w_t*w_d**3*12**-1+w_t*w_d*(y_2-Y)**2 

//Shear Force per metre Length in Plane of contact of two Planks 
//Let Shear Force per metre Length=F_1 
F_1=(F*a_1*(Y-y_1)*10**-6)*(I*10**-8)**-1

//Spacing of nails
s=X*F_1**-1*100

//Result
printf("The spacing of nails along the Length of beam is %.2f",s);printf(" cm")
