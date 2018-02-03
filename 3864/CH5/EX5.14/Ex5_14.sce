clear
//
//

//Initilization of Variables

L_CD=2 //m //Length of CD
E=200 //KN/mm**2
I=60*10**6 //mm**4 //M.I
F_C=20 //KN //Force at C
F_E=30 //KN //Force at E
w=10 //KN/m //u.d.l

//Calculations

X=E*I*10**-6 //KN-m**2

//Let V_A & V_B be the reactions at A & B respectively
//V_A+V_B=70

//Taking Moment at distance x from A
//M_x=34*x-20*(x-1)-10*(x-1)**2*2**-1+10*(x-3)**2*2**-1-30*(x-4)
//EI*(d**2y/dx**2)=34*x-20*(x-1)-10*(x-1)**2*2**-1+10*(x-3)**2*2**-1-30*(x-4)

//Now Integrating Above equation,we get
//EI*(dy/dx)=C1+17*x**2-10*(x-1)**2-5*3**-1*(x-1)**3+5*3**-1*(x-3)**3-15*(x-4)**2

//Again Integrating Above equation,we get
//EI*y=C2+C1*x+17*3**-1*x**3-10*3**-1*(x-1)**3-5*12**-1*(x-1)**4+5*12**-1*(x-3)**4-5*(x-4)**3

//At
x=0
y=0
C2=0

//At 
x=5 //m
y=0
C1=(-17*3**-1*x**3+10*3**-1*(x-1)**3+5*12**-1*(x-1)**4-5*12**-1*(x-3)**4+5*(x-4)**3)*5**-1

//EI*y=C2+C1*x+17*3**-1*x**3-10*3**-1*(x-1)**3-5*12**-1*(x-1)**4+5*12**-1*(x-3)**4-5*(x-4)**3
C2=0
C1=-78
x=1
y_c=(-78*x+17*3**-1*x)*(X)**-1

//EI*y_D=C2+C1*x+17*3**-1*x**3-10*3**-1*(x-1)**3-5*12**-1*(x-1)**4
x=3
C1-78
C2=0
y_D=(C2+C1*x+17*3**-1*x**3-10*3**-1*(x-1)**3-5*12**-1*(x-1)**4)*(X**-1)

//EI*y_E=C2+C1*x+17*3**-1*x**3-10*3**-1*(x-1)**3-5*12**-1*(x-1)**4+5*12**-1*(x-3)**4
x=4
C1-78
C2=0
y_E=(C2+C1*x+17*3**-1*x**3-10*3**-1*(x-1)**3-5*12**-1*(x-1)**4+5*12**-1*(x-3)**4)*X**-1

//Result
printf("\n Deflections at C %0.5f  mm",y_c)
printf("\n Deflections at D %0.5f  mm",y_D)
printf("\n Deflections at E %0.4f  mm",y_E)
