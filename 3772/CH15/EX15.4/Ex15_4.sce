// Problem no 15.4,Page no.352

clc;clear;
close;

L=0.9 //m //Length of cyclindrical shell
D=0.2 //m //Internal Diameter
t=0.008 //m //thickness of metal
dV=20*10**-6 //m**3 //Additional volume
E=200*10**9 //Pa 
m=1*0.3**-1 //Poissoin's ratio

//Calculations

V=%pi*4**-1*D**2*L //Volume of cyclinder

//Let X=2*e_1+e_2
X=dV*V**-1 //Volumetric strain   (Equation 1)

//e_1=p*D*(2*E*t)**-1*(1-1*(2*m)**-1) //Circumferential strain
//e_2=p*D*(2*E*t)**-1*(1*2**-1-1*(2*m)**-1) //Circumferential strain

//substituting above values in equation 1 we get
p=X*E*t*(D*((1-1*(2*m)**-1)+(1*4**-1-1*(2*m)**-1)))**-1*10**-3 //KN/m**2 //Pressure exerted by fluid
sigma_t=p*D*(2*t)**-1 //KN/m**2 //hoop stress

//Result
printf("Pressure Exerted by Fluid on the cyclinder is %.2f",p);printf(" KN/m**2")
printf("\n Hoop stress is %.2f",sigma_t);printf(" KN/m**2")
