

//Variable declaration
Ls=40                     //distance from screen(m)
d=1.5                     //distance between plates(cm)
Va=1200                   //accelerating potential(V) 
L=3                       //length of CRT(m)
e=1.6*10**-19             //charge on electron(C)
m=9.1*10**-31             //mass of electron(Kg) 
Y=4*10**-2                //vertical deflection(V)

//Calculations
//Part a
U=sqrt((2*e*Va)/m)   //velocity of electron upon striking screen(m/s)

//Part
Vd=(2*d*Va*Y)/(L*Ls)      //deflecting voltage(V)

//Part c
Vdmax=(m*d**2*U**2)/(e*L**2)   //maximum allowable deflection(V)

//Results
printf ("velocity of electron upon stricking the screen is %.3e m/s",U)
printf ("deflecting voltage is %.f V",Vd/1E-2)
printf ("maximum allowable deflection is %.f V",Vdmax)
