clear
//
//
//

//Variable declaration
El=10**-2*50       //energy loss(J)
H=El*60      //heat produced(J)
d=7.7*10**3    //iron rod(kg/m**3)
s=0.462*10**-3    //specific heat(J/kg K)

//Calculation
theta=H/(d*s)     //temperature rise(K)

//Result
printf("\n temperature rise is %0.2f  K",theta)
