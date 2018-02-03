clear
//
//

//Initilization of Variables
L=5000 //mm //Length of strut
dell=10 //mm //Deflection
W=10 //N //Load

//Calculations

//Central Deflection of a simply supported beam with central concentrated load is
//dell=W*L**3*(48*E*I)**-1 

//Let E*I=X
X=W*L**3*(48*dell)**-1 //mm

//Euler's Load
//Let Euler's Load be P
P=%pi**2*X*(L**2)**-1

//Result
printf("\n Critical Load of Bar is %0.2f  N",P)
