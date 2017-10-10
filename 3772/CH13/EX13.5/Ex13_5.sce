// Problem no 13.5,Page No.304

clc;clear;
close;

D=50 //cm //Overall depth
b=19 //cm //width of flange
t=2.5 //cm //Thickness of Flange
w_t=1.5 //cm //Web thickness
w_d=45 //cm //web thickness
F=400*10**3 //N //Shear Force
I=64500*10**-8 //m**4 //M.I

//Calculations  (Part-1)
 
a_1=b*t //cm**2 //Area of flange
a_2=w_d*w_t //cm**2 //Area of web
y_1=t*2**-1 //cm //C.G of flange
y_2=t+w_d*2**-1

//As section is symmetrical 
Y=D*2**-1 //cm

//Shear Stress in flange at the junction with web
//Let tou(Shear stress)=S 
//Change in the notifications of Shear Stress For convenience
S_1=(F*a_1*(Y-y_1)*10**-6)*(I*b*10**-2)**-1*10**-3 

//Shear Stress in web at the junction with flange 
S_2=(F*a_1*(Y-y_1)*10**-6)*(I*w_t*10**-2)**-1*10**-3 

//Max Shear Stres at N.A
S_max=(F*(a_1*(Y-y_1)+(w_t*(Y-t))*((Y-t)*2**-1))*10**-6)*(I*w_t*10**-2)**-1*10**-3 //kPa

//Calculations (Part-2)

//consider a strip in the flange of thickness dy at a distance y from N.A 

//S=F*(b*(Y-y)*(Y+y)*2**-1*10**-6)*(I*b*10**-2)**-1
//after substituting values we get
//S=625-y**2*(3225*10**-8)**-1

//shear force carried by small strip
//F_1=625-y**2*(3225*10**-8)**-1*b*dy*10**-4

//Now Integrating above Equation we get
a =625
b =-1
I = integrate('625-y**2','y', 22.5, 25)//, args=(a,b))
//Shear force carried by one flange
F_1=19*3225**-1*10**4*I

//Shear force carried by two flange
F_2=2*F_1

//Shear force carried by web
F_3=F-F_2

//Result
printf("The shear Force int the section is %.2f",S_max);printf(" kPa")
printf("\n Total Shear Force in the web is %.2f",F_3);printf(" N")


printf("\n Shear stress distribution Diagram")

//Plotting the Shear stress distribution Diagram

X_1=[0,2.5,2.5,25,47.5,47.5,50]
Y_1=[0,S_1,S_2,S_max,S_2,S_1,0]
Z_1=[0,0,0,0,0,0,0]
plot(X_1,Y_1,X_1,Z_1)
xlabel("Length x in m")
ylabel("Shear Stress in kN/m**2")
