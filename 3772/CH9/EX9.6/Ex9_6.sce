// Problem no 9.6,Page no.236

clc;clear;
close;

d=0.04 //m //Internal Diameter of tube
D=0.05 //m //External Diameter of tube
P_1=240*10**3 //N //Compressive Load
P_2=158*10**3//N //Failure Load
L=2 //m //Length of tube
l=3 //m //Length of strut

//Calculations
A=%pi*4**-1*(D**2-d**2) //m**2 //Areaof Tube
I=%pi*64**-1*(D**4-d**4) //m**4 //M.I of tube
k=(I*A**-1)**0.5 //m //Radius of Gyration
sigma_c=P_1*A**-1 //Pa //Compressive stress

l_e=L*2**-1 //m //According to given condition i.e Both ends fixed

//Now from crippling Load Equation we get
alpha=((sigma_c*A*P_2**-1-1)*((l_e*k**-1)**2)**-1)*10**4

//Now Crippling Load when L=3 m Is used as strut
l_e_2=l*(2**0.5)**-1
P_3=sigma_c*A*(1+alpha*10**-4*(l_e_2*k**-1)**2)**-1 


printf("The Value of constant value alpha is %.2f",alpha)
printf("\n The Crippling Load of Tube is %.2f",P_3);printf(" N")
