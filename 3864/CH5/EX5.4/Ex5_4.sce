clear
//
//


//Initilization of Variables

E=2*10**5 //N/mm**2 //Youngs Modulus
I=180*10**6 //mm**4 //M.I
W1=20 //N/m //u.d.l
W2=20*10**3 //N //Pt load
L=3000 //m //Span of beam
a=2000 //m //Span of u.d.l

//Calculations

//Displacement of free End due to 20 KN Pt load at free end
dell1=W2*L**3*(3*E*I)**-1 //mm

//Displacement of free end due to u.d.l
dell2=W1*a**4*(8*E*I)**-1+(L-a)*W1*a**3*(6*E*I)**-1

//Deflection at free end
dell=dell1+dell2 //mm

//Result
printf("\n The Displacement of Free End of cantilever beam is %0.2f  mm",dell)
