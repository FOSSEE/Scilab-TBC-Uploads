// Problem no 13.4,Page No.303

clc;clear;
close;

F=100*10**3 //N //Shear Force
I=11340*10**-8 //m**4 //M.I
b=20 //cm //width of Flange
t=5 //cm //thickness of flange
w_d=20 //cm //Depth of web
w_t=5 //cm //thickness of web

//Calculations

a_1=b*t //cm**2 //Area of flange
a_2=w_d*w_t //cm**2 //Area of web
y_1=t*2**-1 //cm //C.G of flange
y_2=t+w_d*2**-1

//C.G of C/s
Y=(a_1*y_1+a_2*y_2)*(a_1+a_2)**-1

//Shear Stress in flange at the junction with web
//Let tou(Shear stress)=S 
//Change in the notifications of Shear Stress For convenience
S_1=(F*a_1*(Y-y_1)*10**-6)*(I*b*10**-2)**-1*10**-3 

//Shear Stress in web at the junction with flange 
S_2=(F*a_1*(Y-y_1)*10**-6)*(I*w_t*10**-2)**-1*10**-3 

//Max Shear Stres at N.A
S_max=(F*(a_1*(Y-y_1)+(w_t*(Y-t))*((Y-t)*2**-1))*10**-6)*(I*w_t*10**-2)**-1*10**-3

//Result
printf("Shear Stress in flange at the junction with web %.2f",S_1);printf(" KN/m**2")
printf("\n Shear Stress in web at the junction with flange %.2f",S_2);printf(" KN/m**2")
printf("\n Max Shear Stress at N.A %.2f",S_max);printf(" KN/m**2")
