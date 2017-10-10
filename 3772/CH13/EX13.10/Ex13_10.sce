// Problem no 13.10,Page No.309

clc;clear;
close;

b=25 //cm //width of top FLange
t=5 //cm //thickness of top Flange
D=35 //cm //Depth of overall section
w_d=25 //cm //depth of web
w_t=5 //cm //thickness of web
t_1=5 //cm //thickness of bottom Flange
b_1=15 //cm //width of bottom Flange
sigma=17.5*10**6
F=100*10**3 //N //S.F

//Calculations

a_1=b*t //area of top flange
a_2=w_d*w_t //area of web
a_3=b_1*t_1 //area of bottom Flange
y_1=t*2**-1 //C.G of top flange
y_3=D-(t_1*2**-1) //C.G of bottom Flange 
y_2=D*2**-1 //c.G of Web

Y=(a_1*y_1+a_2*y_2+a_3*y_3)*(a_1+a_2+a_3)**-1

I=b*t**3*12**-1+b*t*(Y-y_1)**2+w_t*w_d**3*12**-1+w_t*w_d*(D*2**-1-Y)**2+b_1*t_1**3*12**-1+b_1*t_1*(y_3-Y)**2

M=sigma*I*10**-8*(Y*10**-2)**-1 //B.M

//Shear Stress in upper Flange at the junction with web
S_1=F*b*t*(Y-y_1)*10**-6*(I*10**-8*b*10**-2)**-1*10**-3

//Shear Stress in web at the junction with upper Flange 
S_2=S_1*b*t**-1

//Max shear stress at the N.A
S=F*(b*t*(Y-y_1)+w_t*(Y-t)*(Y-t)*2**-1)*10**-6*(I*10**-8*w_t*10**-2)**-1*10**-3

//Shear Stress in Lower Flange at the junction with web
S_3=F*(a_3*(D-Y-t_1*2**-1))*10**-6*(I*10**-8*b_1*10**-2)**-1*10**-3

//Shear Stress in web at the junction with Lower Flange 
S_4=S_3*b_1*t_1**-1

//Result
printf("The Bending Moment section can take is %.2f",M);printf(" N-m")
printf("\n The shear stress Distribution Diagram")

//Plotting the Shear stress distribution Diagram

X_1=[0,5,5,15.19,30,30,35]
Y_1=[0,S_1,S_2,S,S_3,S_4,0]
Z_1=[0,0,0,0,0,0,0]
plot(X_1,Y_1,X_1,Z_1)
xlabel("Length x in m")
ylabel("Shear Stress in kN/m**2")

