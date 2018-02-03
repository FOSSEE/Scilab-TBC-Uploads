clear
//
//

//Initilization of Variables
L_ED=2 //m //Length of DB & AC
L_AC=2
L_DB=2
L_CD=4 //m //Length of CD
L_CE=2 //m //Length of CE
F_A=40 //KN //Force at C
F_B=20 //KN //Force at A
E=200*10**6 //KN/mm**2 //Modulus of Elasticity
I=50*10**-6 //m**4 //M.I

//Calculations

//LEt V_C & V_D be the reactions at C &  D respectively
//V_C+V_D=60

//Taking Moment At D,M_D
V_C=-(-F_A*(L_AC+L_CE+L_ED)+F_B*L_DB)*L_CD**-1
V_D=60-V_C

//Now Taking Moment at Distance x from A,
//M_x=-40*x+50*(x-2)+10*(x-6)

//EI*(d**2*y/dx**2)=-40*x+50*(x-2)+10*(x-6)

//Now Integrating above Equation we get
//EI*(dy/dx)=C1+20*x**2-25*(x-2)+5*(x-6)**2

//Again Integrating above Equation we get
//EI*y=C2+C1*x-20*3**-1*x**3+25*3**-1*(x-2)**3+5*3**-1*(x-6)**3

//At
x=0
y=0
//C2+2*C1=-53.33    ...............(1)

//At 
x=6
y=0
//C2+6*C1=906.667    ...............(2)

//Subtracting Equation 1 from 2 we get
C1=853.333*4**-1
C2=53.333-2*C1
x=0
y_A=(C2+C1*x-20*3**-1*x**3+25*3**-1*(x-2)**3+5*3**-1*(x-6)**3)*(E*I)**-1

//Answer For y_A is incorrect in textbook

//At Mid-span
C1=853.333*4**-1
C2=53.333-2*C1
x=4
y_E=(C2+C1*x-20*3**-1*x**3+25*3**-1*(x-2)**3+5*3**-1*(x-6)**3)*(E*I)**-1

//Answer For y_E is incorrect in textbook

//At B
C1=853.333*4**-1
C2=53.333-2*C1
x=8
y_B=(C2+C1*x-20*3**-1*x**3+25*3**-1*(x-2)**3+5*3**-1*(x-6)**3)*(E*I)**-1


//Result
printf("\n Deflection relative to the level of the supports:at End A %0.4f  mm",y_A)
printf("\n                                                 :at End B %0.4f  mm",y_B)
printf("\n                                                 :at Centre of CD %0.4f  mm",y_E)
