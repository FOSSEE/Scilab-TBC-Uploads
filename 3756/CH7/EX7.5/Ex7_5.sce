clc
//
//
//

//Variable declaration
R=1.5*10**11   //Average distance between sun & Earth
P=3.8*10**26   //Power Radiated by sun


//Calculations
S=((P*60)/(4*3.14*(R**2)*4.2*100))*10**-2

//Result
printf("\n The Average solar energy incident on earth is %1.2f cal/cm**2/min",S)
