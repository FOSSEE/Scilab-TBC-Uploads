clc
//solution
// initialization of variables

r=12 // compression ratio
k=1.4 // polytropic index for air
p1=200 // pressure at state 1 in kPa
p3=10000 // pressure at state 3 in kPa

c=100/(r-1) // clearance in percentage
printf("The percent clearance is %0.2f %% \n",c)
v3=100 // let us assume v3=100 m^3 for calculations
p2=p1*(r**k) // polytopic process pressure relation
p4=p3*(1/(r**k))// polytropic process pressure relation
w34=v3*(r*p4-p3)/(1-k) // polytropic work done in process 3 to 4
v2=v3 // constant volume process
w12=v2*(p2-r*p1)/(1-k)
wcycle=w12+w34 // total work in cycle
 // now equating the polytropic work calculated to work by MEP
MEP=wcycle/(r*v2-v2) // as work = pressure*change in volume
printf("The MEP is %i kPa",MEP)  
// The solution is wrong in textbook as calculation for P2 is wrong 









