////
//Variable Declaration
//r = Symbol('r')      //Radius of inner circle
C = list(5,2,0)
//Calculations
A1 = %pi
A2 = %pi*(2)**2 - A1
A3 = %pi*(3)**2 - (A1 + A2)
At = A1 + A2 + A3
f1 = A1/At
f2 = A2/At
f3 = A3/At
sf = f1 + f2 + f3

ns = (f1*C(1)+f2*C(2)+f3*C(3))/sf

//Results
printf("\n A1, A2, A3:%f*r**2 %f*r**2 %f*r**2  ', A1, A2, A3)
printf("\n f1, f2, f3: %f %f %f', f1,f2,f3)
printf("\n Average payout $ %f  ',((ns)))
