// Problem 8.18,Page no.218

clc;clear;
close;

//Calculation

n=10 //number of coils
d=2*10**-2 //m //Diameter of wire
D=12*10**-2 //m //Diameter of coiled spring
R=0.06 //m //Radius of coiled spring
dell=0.5*10**-2 //Deflection
E=200*10**9 //Pa 
G=80*10**9 //Pa 
alpha=30 //degree

//Calculations

//beta=64*W*R**2*n*sinalpha*(d**4)**-1*(1*G**-1-2*E**-1)+64*T*R*n*secalpha*(d**4)**-1*(sin**2alpha*G**-1+2*cos**2alpha*E**-1)=0
//From above equation anf simplifying we get

//T=-6.11*10**-3*W

//dell=64*W*R**3*n*sec(alpha)*(d**4)**-1*[(cos(alpha))**2*G**-1+2*(sin(alpha))**2*E**-1]+64*T*R**2*n*sin(alpha)*(d**4)**-1*[1*G**-1+2*E**-1]

//After substituting Values and further simplifying we get
//1.1847*10**-5*W+1.62*10**-4*T=0.005

//Now substituting value of T in above equation we get
//1.1847*10**-5*W-9.8982*10**-7*W=0.005
W=0.005*(1.1847*10**-5-9.8982*10**-7)**-1 //N
T=-6.11*10**-3*W //N*m

//Result
printf("The axial Load is %.2f",W);printf(" N")
printf("\n Necesscary torque is %.2f",T);printf(" N*m")
