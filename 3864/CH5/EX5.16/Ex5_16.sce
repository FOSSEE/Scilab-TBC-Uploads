clear
//
//

//Initilization of Variables

L_AC=2 //m //Length of BD,CB,AC
L_BD=2
L_CB=2
F_C=40 //KN //Force at C
F_D=10 //KN Force at D
L=6 //m spna of beam

//EI is constant in this problem

//Calculations

//Let V_A & V_B be the reactions at A & B Respectively
//V_A+V_B=50

//Taking Moment at Pt A
V_B=(F_D*L+F_C*L_AC)*(L_AC+L_CB)**-1
V_A=50-V_B

//Now Taking Moment at distance x from A,M_x
//M_x=15*x-40*(x-2)+35*(x-4)
//EI*(d**2*y/dx**2)=15*x-40*(x-2)+35*(x-4)

//Now Integrating above equation we get
//EI*(dy/dx)=C1+7.5*x**2-20*(x-2)**2+17.5(x-4)**2

//Again Integrating above equation we get
//EI*y=C2+C1*x+2.5*x**2-20*3**-1*(x-2)**3+17.5*(x-4)**3*3**-1

//At
x=0
y=0
//we get
C2=0

//At
x=4 
y=0
//we get
C1=(2.5*4**3-20*3**-1*2**3)*4**-1

//Now Deflection at C
x=2
C1=-26.667
C2=0
y_C=C2+C1*x+2.5*x**3

//Now Deflection at D
C1=-21.667
C2=0
y_D=-26.667*6+2.5*6**3-20*3**-1*4**3+17.5*2**3*3**-1

//Result
printf("\n Deflections Under Loads are:y_D %0.4f  ",y_D)
printf("\n                            :y_C %0.2f  ",y_C)
