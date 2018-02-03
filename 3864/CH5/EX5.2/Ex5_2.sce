clear
//
//

//Initilization of Variables

L=3000 //mm //span of beam
a=2000 //mm
W1=20*10**3 //N //Pt Load Acting on beam
W2=30*10**3 //N //Pt Load Acting on beam
E=2*10**5 //N/mm**2 //Youngs Modulus
I=2*10**8 //mm**4 //M.I

//Calculations

//Deflection at free End Due to W2
dell1=W2*L**3*(3*E*I)**-1 //mm

//Deflection at free end Due to W1
dell2=W1*a**3*(3*E*I)**-1+(L-a)*W1*a**2*(2*E*I)**-1 //mm

//Total Deflection at free end
dell=dell1+dell2 //mm

//Result
printf("\n Deflection at Free End is %0.2f  mm",dell)
