clear
//
//

//Initilization of Variables

L=1.5 //m //Length of steel bar
L1=1000 //m0 //Length of steel bar 1
L2=500 //m //Length of steel bar 2   
d1=40 //Diameter of steel bar 1
d2=20 //diameter of steel bar 2
E=2*10**5 //N/mm**2 //Modulus of Elasticity
P=160*10**3 //N //Load

//Calculations

A1=%pi*4**-1*d1**2 //Area of Portion 1

//Extension of uniform Portion 1
dell_l1=P*L1*(A1*E)**-1 //mm

//Extension of uniform Portion 2
dell_l2=4*P*L2*(%pi*d1*d2*E)**-1 //mm

//Total Extension of Bar
dell_l=dell_l1+dell_l2

//Result
printf("\n The Elongation of the Bar is %0.2f  mm",dell_l)
