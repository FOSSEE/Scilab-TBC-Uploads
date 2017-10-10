
clear//

//Variable Declaration
//The computation is mostly variable based hence values will be directly declared 
C1=19.20*10**3 //lb.ft^2
C2=-131.6*10**3 //lb.ft^2
C3=14.7*10**3 //lb.ft^2
C4=-112.7*10**3 //lb.ft^2
EI=10**7 //Flexural Rigidity in psi

//Calculations
v=-(C2*12**3)/(EI*40) //Displacement in inches

//Result
printf("\n The maximum displacement is %0.3f in downwards",v)
