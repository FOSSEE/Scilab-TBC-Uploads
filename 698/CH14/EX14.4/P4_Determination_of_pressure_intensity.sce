clc
//Example 14.4
// Determination of pressure intensity

//------------------------------------------------------------------------------
//Given Data:
//Axial force
F=4000//N
//Inner radius
Ri=0.050//m
//Outer radius
Ro=0.100//m
//------------------------------------------------------------------------------

//Maximum pressure intensity occurs at inner radius
Pmax=F/(2*%pi*(Ro-Ri)*Ri)

//Minimum pressure intensity occurs at outer radius
Pmin=F/(2*%pi*(Ro-Ri)*Ro)

//Average intensity of pressure
Pavg=F/(%pi*(Ro^2-Ri^2))
//------------------------------------------------------------------------------

//Printing result file to .txt
res4= mopen(TMPDIR+'/4_Determination_of_pressure_intensity.txt','wt')
mfprintf(res4,'Pressure variation is given by \n')
mfprintf(res4,'p=C/r =F/(2*pi*(Ro-Ri)*r)\n\n')
mfprintf(res4,'Maximum pressure intensity occurs at inner radius r=Ri\n')
mfprintf(res4,'The maximum intensity of pressure is %3.1f kN/m^2\n\n',(Pmax*(10^-3)))
mfprintf(res4,'Minimum pressure intensity occurs at outer radius r=Ro\n')
mfprintf(res4,'The minimum intensity of pressure is equal to %3.1f kN/m2\n\n",(Pmin*(10^-3)))
mfprintf(res4,'Average intensity of pressure\n')
mfprintf(res4,'The average intensity of pressure is equal to %3.1f kN/m2',(Pavg*(10^-3)))
mclose(res4);
editor(TMPDIR+'/4_Determination_of_pressure_intensity.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------