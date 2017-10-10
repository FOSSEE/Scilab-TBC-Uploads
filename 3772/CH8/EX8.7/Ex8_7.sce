// Problem 8.7,Page no.211

clc;clear;
close;

n=12 //number of coils
d=3 //cm //mean diameter
k=720 //N/m //stiffness of spring
sigma_s=190 //MPa //Max shear stress
G=80 //GPa //Modulus of rigidity
D=3 //mm //Diameter of outer spring

//Calculations
R=D*2**-1 //mm //Radius of outer spring

//Dell_1=64*P*(R*10**-3**3*n*(G*10**9*(d*10**-3)**4)**-1 //m //Extension of first spring
//After substituting values and further simplifying we get
//Dell_1=0.0004*P //m

//Dell_2=64*P*(R*10**-3**3*n*(G*10**9*(d_1)**4)**-1 //m //Extension of first spring
//After substituting values and further simplifying we get
//Dell_2=3.24*10**-14*P*(d_1**4)**-1 //m //where d_1 is diameter of inner spring

//Dell=Dell_1+Dell_2
//After substituting values and further simplifying we get
//dell=0.0004*P+3.24*10**-14*P*((d)**4)**-1

//But dell=P*k**-1=P*720**-1

//Now substituting value of dell in above equation we get
d_1=(3.24*10**-14*(1*720**-1-0.0004)**-1)**0.25 //cm //diameter of inner spring

//Now T=P*R=%pi*d_1**3*dell_s*sigma_s*16**-1
//simplifying above equation further 
//P=%pi*d**3*sigma_s*(16*R)**-1 
//Now substituting values and further simplifying we get
P=%pi*d_1**3*sigma_s*10**6*(16*R*10**-2)**-1 //N //Limiting Load

dell=P*k**-1*10**2 //cm //Total Elongation

//Result
printf("Greatest Load that can be carried by composite spring is %.f N",P)
printf("\n Extension in spring is %.2f",dell);printf(" cm")
