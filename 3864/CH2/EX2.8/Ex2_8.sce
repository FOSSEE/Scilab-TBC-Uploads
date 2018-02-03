clear
//
//

//Initilization of Variables

L=1000 //mm //Length of Bar
l=400 //mm //Length upto which bire is drilled 
D=30 //mm //diameter of bar
d1=10 //mm //diameter of bore
P=25*10**3 //N //Load
dell_l=0.185 //mm //Extension of bar

//Calculations    

L1=L-l //Length of bar above the bore
L2=400 //mm //Length of bore

A1=%pi*4**-1*D**2 //Area of bar
A2=%pi*4**-1*(D**2-d1**2) //Area of bore

E=P*dell_l**-1*(L1*A1**-1+L2*A2**-1)

//Result
printf("\n The Modulus of ELasticity is %0.2f  N/mm**2",E)
