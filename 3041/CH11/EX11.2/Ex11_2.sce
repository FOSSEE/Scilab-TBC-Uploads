//Variable declaration
E=120                  //electric field(V/m)              
B=5*10**-5             //magnetic field(T) 
q=1.6*10**-19          //charge on electron(C)
u=10**6                //velocity of electron(m/s)
m=9.1*10**-31          //mass of electron(Kg) 
a=9.81                 //acceleration of gravitation(m/s^2)

//Calculations
//Part a
fe=q*E                //force on electron due to electric field(N)

//Part
fm=B*q*u             //force on electron due to magnetic field(N)

//Part c
fg=m*a               //force on electron due to gravitational field(N)

//Results
printf ("force on electron due to electric field is %.2e N",fe)
printf ("force on electron due to magnetic field is %.e N",fm)
printf ("force on electron due to gravitational field is %.4e N",fg)
