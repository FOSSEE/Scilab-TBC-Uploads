clear
//
//


//Initilization of Variables

L_CB=2 //m //Length of CB
L_AC=4 //m //Length of AB
M_C=15 //KN.m //Moment At Pt C
F_C=30 //KN
L=6 //m Span of Beam

//Let X=E*I
X=10000 //KN-m**2

//Calculations

//Let V_A and V_B be the reactions at A & B respectively
//V_A+V_B=30

//Taking Moment a A,we get
V_B=(F_C*L_AC+M_C)*L**-1
V_A=30-V_B

//Now Taking Moment at distacnce x from A
//M_x=7.5*x-30*(x-4)+15

//By using Macaulay's Method
//EI*(d**2*x/dx**2)=M_x=7.5*x-30*(x-4)+15

//Now Integrating above Equation we get
//EI*(dy/dx)=C1+7.5*x**2*2**-1-15*(x-4)**2+15*(x-4)  ............(1)

//Again Integrating above Equation we get
//EIy=C2+C1*x+7.5*6**-1*x**3-5*(x-4)**3+15*(x-4)**2*2**-1..........(2)

//Boundary Cinditions
x=0
y=0

//Substituting above equations we get 
C2=0

x=6 //m
y=0

C1=-(7.5*6**3*6**-1-5*2**3+15*2**2*2**-1)*6**-1

//EIy_c=C2+C1*x+7.5*6**-1*x**3-5*(x-4)**3+15*(x-4)**2*2**-1
//Sub values in Above equation we get
y_c=(93.3333*(X)**-1)

//Result
printf("\n The Deflection at C %0.4f  mm",y_c)
