clc
//
//
//

//Variable declaration
EH=(1000/(16*3.14))
Z=376.6

//Calculations
E=sqrt(EH*Z)
H=sqrt(EH/Z)

//Result
printf("\n The Intensity of Electric field is %2.2f V/m",E)
printf("\n The Intensity of Magnetic Field is %0.3f A-turn/m",H)
