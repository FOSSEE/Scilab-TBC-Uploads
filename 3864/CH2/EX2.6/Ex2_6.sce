clear
//
//

//Initilization of Variables

P=40*10**3 //N //Load   
L1=160 //mm //Length of Bar1
L2=240 //mm //Length of bar2
L3=160 //mm //Length of bar3
d1=25 //mm //Diameter of Bar1
d2=20 //mm //diameter of bar2
d3=25 //mm //diameter of bar3
dell_l=0.285 //mm //Total Extension of bar

//Calculations

E=P*4*(dell_l*%pi)**-1*(L1*(d1**2)**-1+L2*(d2**2)**-1+L3*(d3**2)**-1)

//Result
printf("\n The Youngs Modulus of the material %0.2f  N/mm**2",E)
