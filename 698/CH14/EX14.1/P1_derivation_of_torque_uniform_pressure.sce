clc
//Example 14.1
//Derivation of torque capacity

//------------------------------------------------------------------------------
//This example is derivation based, hence the code will comprise only of statements printed to text file
//Printing result file to .txt
res1=mopen(TMPDIR+'1_derivation_of_torque_uniform_pressure.txt','wt')
mfprintf(res1,"Consider a differential area dA=2*pi*r dr.\nThe differential normal force=dN=p dA=p(2*pi*r dR),\n")
mfprintf(res1,"The differential force dQ=f dN=f(p(2*pi*r dR)).\nThe differential frictional torque=dT=r dQ=r(f*p(2*pi*r dR));\n\n")
mfprintf(res1,"Intergrating with respect to r, with p and f as constants, over r=Ri to r=Ro,\nwe get the total torque as\n")
mfprintf(res1,"\t\tT=2*pi*f*p[((Ro^3)-(Ri^3))/3]\n\n")
mfprintf(res1,"The axial force\n")
mfprintf(res1,"\t\tF=p*pi*((Ro^2)-(Ri^2))\n")
mfprintf(res1,"from which the average pressure,\n")
mfprintf(res1,"\t\tp=F/[pi*((Ro^2)-(Ri^2))]\n\n")
mfprintf(res1,"Substituting this value of p into\n")
mfprintf(res1,"\t\tT=2*pi*f*p[((Ro^3)-(Ri^3))/3]\n")
mfprintf(res1,"We obtain\n\n")
mfprintf(res1,"\t\tT=F*f*[(2/3)*((Ro^3)-(Ri^3))] = F*f*Rf")
mclose(res1)
editor(TMPDIR+'1_derivation_of_torque_uniform_pressure.txt')