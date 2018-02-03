clear
//Given
//Variable declaration
A=700              //Area in sq.mm
L=1.5*10**3        //Length of a metal bar in mm
sigma=160          //Stress at elastic limit in N/sq.mm
E=2e5              //Youngs Modulus in N/sq.mm


//Calculation
V=A*L                           //Volume of bar in sq.mm
Pr=(sigma**2/(2*E)*V)*1e-3      //Proof resilience in N-m
P=int(sigma*A/2*1e-3)           //Suddenly applied load in kN
P1=int(sigma*A*1e-3)            //gradually applied load in kN

//Result
printf("\n Proof resilience = %0.3f  N-m",Pr)
printf("\n Suddenly applied load = %0.3f  kN",P)
printf("\n Gradually applied load = %0.3f  kN",P1)
