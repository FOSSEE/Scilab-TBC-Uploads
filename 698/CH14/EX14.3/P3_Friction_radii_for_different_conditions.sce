clc
//Example 14.3
//Comparison of friction radius between clutches of different dimensions
//Ro= outer radius; Ri=inner radius

//-----------------------------------------------------------------------------
//Case 1: Ro=100mm ; Ri= 90mm
Ro1=100//mm
Ri1=90//mm
Ro31=Ro1^3
Ri31=Ri1^3
Ro21=Ro1^2
Ri21=Ri1^2
// with uniform pressure:
Rfp1=((2/3)*(Ro31-Ri31))/(Ro21-Ri21)
// with uniform wear
Rfw1=(Ro1+Ri1)/2
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//Case 2: Ro=100mm ; Ri= 25mm
Ro2=100//mm
Ri2=25//mm
Ro32=Ro2^3
Ri32=Ri2^3
Ro22=Ro2^2
Ri22=Ri2^2
// with uniform pressure:
Rfp2=((2/3)*(Ro32-Ri32))/(Ro22-Ri22)
// with uniform wear
Rfw2=(Ro2+Ri2)/2
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
//Printing result file to .txt
res3= mopen(TMPDIR+'/3_friction_radii_for_different_conditions.txt','wt');
mfprintf(res3,'CASE I: Ro=100mm and Ri=90mm\n')
mfprintf(res3,'The friction radius based on uniform pressure theory is %2.1f mm\n',Rfp1);
mfprintf(res3,'The friction radius based on uniform wear theory is %2.1f mm\n',Rfw1);
mfprintf(res3,"\n\nCASE II: Ro=100mm ; Ri= 25mm\n")
mfprintf(res3,"The friction radius based on uniform pressure theory is %2.1f mm\n",Rfp2)
mfprintf(res3,"The friction radius based on uniform wear theory is %2.1f mm",Rfw2)
mclose(res3);
editor(TMPDIR+'/3_friction_radii_for_different_conditions.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------