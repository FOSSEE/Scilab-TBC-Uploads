clear
//
//
//

//Variable declaration
i=10**-2    //current(ampere)
A=0.01*0.001     //area(m**2)
RH=3.66*10**-4   //hall coefficient(m**3/coulomb)
Bz=0.5     //magnetic induction(weber/m**2)

//Calculation
Jx=i/A     
Ey=RH*Bz*Jx    
Vy=Ey*i      //voltage appeared(V)

//Result
printf("\n voltage appeared is %0.3f  mV",Vy*10**3)
