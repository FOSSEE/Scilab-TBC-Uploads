clear
//
//


//Initilization of Variables
L_AC=2 //m //Length of AC,CD,DB
L_DB=2
L_CD=2
F_C=40 //KN //Force at C
w=20 //KN/m //u.d.l
L=6 //m //span of beam

//Let E*I=X
X=15000 //KN-m**2


//Calculations

//Let V_A & V_B be the reactions at A & B respectively
//V_A+V_B=80

//Taking Moment B,M_B
V_A=(F_C*(L_CD+L_DB)+w*L_DB*L_DB*2**-1)*L**-1 //KN
V_B=80-V_A //KN

//Taking Moment at distance x from A
//M_x=33.333*x-40*(x-2)-20*(x-4)**2*2**-1
//EI*(d**2/dx**2)=33.333*x-40*(x-2)-10*(x-4)**2

//Integrating above equation we get
//EI*(dy/dx)=C1+33.333*x**2*2**-1-20*(x-2)**2-10*3**-1*(x-4)**3

//Again Integrating above equation we get
//EI*y=C2+C1*x+33.333*x**3*6**-1-20*3**-1*(x-2)**3-10*12**-1*(x-4)**4

//At
x=0
y=0
C2=0

//At
x=6
y=0
C1=-760*6**-1

//Assuming Deflection to be max in portion CD and sustituting value of C1 in equation of slope we get
//EI*y=C2+C1*x+33.333*x**3*6**-1-20*3**-1*(x-2)**3-10*12**-1*(x-4)**4
//0=-126.667+33.333*x**2**-1-20*(x-2)**2

//After rearranging and simplifying further we get

//x**2-24*x+62=0
//From above equations
a=1
b=-24
c=62

y=(b**2-4*a*c)**0.5

x1=(-b+y)*(2*a)**-1
x2=(-b-y)*(2*a)**-1

//Taking x2 into account
x=2.945 //m
C1=-126.667
C2=0

y_max=(C2+C1*x+33.333*x**3*6**-1-20*3**-1*(x-2)**3)*X**-1 //mm

//Max slope occurs at the ends
//At A,
//EI*(dy/dx)_A=-126.667
//At B
//EI*(dy/dx)_B=126.667+33.333*6**2*2**-1-20*4**2-10*2**3
//After simplifying Further we get
//EI*(dy/dx)_B=73.3273

//Now Max slope is EI(dy/dx)_A=-126.667
//15000*(dy/dx)_=-126.667

//Let Y=dy/dx
Y=-126.667*X**-1 //Radians

//Result
printf("\n Maximum Deflection for Beam is %0.4f  mm",y_max)
printf("\n Maximum Slope for beam is %0.4f  radians",Y)
