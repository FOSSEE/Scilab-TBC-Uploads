// Problem no 13.3,Page No.302

clc;clear;
close;

L=2 //m //span
w=20*10**3 //N/m //u.d.L
b=12.5 //cm //width of Flange
t=2.5 //cm //flange thickness
w_t=2.5 //cm //web thickness
D=20  //cm //Overall depth
w_d=17.5 //m //Depth of web

//Calculations

F=w*L*2**-1 //N //Max S.F
a_1=b*t //Area of flange
a_2=w_d*w_t //Area of web
y_1=t*2**-1 //C.G of flange
y_2=w_d*2**-1+t //C.G of web

//C.G of c/s
Y=(a_1*y_1+a_2*y_2)*(a_1+a_2)**-1 

//M.I about N.A
I=b*t**3*12**-1+b*t*(Y-y_1)**2+w_t*w_d**3*12**-1+w_t*w_d*(y_2-Y)**2 

//Shear Stress in flange at the junction with web
//Let tou(Shear stress)=S 
//Change in the notifications of Shear Stress For convenience
S_1=(F*a_1*(Y-y_1)*10**-6)*(I*10**-8*b*10**-2)**-1*10**-3 

//Shear Stress in web at the junction with flange 
S_2=(F*a_1*(Y-y_1)*10**-6)*(I*10**-8*w_t*10**-2)**-1*10**-3 

//Max Shear Stres at N.A
S_max=(F*(a_1*(Y-y_1)+(w_t*(Y-t))*((Y-t)*2**-1))*10**-6)*(I*10**-8*w_t*10**-2)**-1*10**-3

//Result
printf("The Max shear stress in the beam is %.2f",S_max);printf(" KN/m**2")

printf("\n\n Shear stress distribution Diagram")

//Plotting the Shear stress distribution Diagram

X_1=[0,2.5,2.5,4.58,15.42]
Y_1=[0,S_1,S_2,S_max,0]
Z_1=[0,0,0,0,0]
plot(X_1,Y_1,X_1,Z_1)
xlabel("Length x in m")
ylabel("Shear Stress in kN/m**2")
