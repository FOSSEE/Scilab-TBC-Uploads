clc
//Example 14.2
//Derivation of torque capacity for one pair of surfaces subjected to uniform wear

//------------------------------------------------------------------------------
//This example is derivation based, hence the code will comprise only of statements printed to text file
//Printing result file to .txt
res2=mopen(TMPDIR+'2_derivation_of_torque_uniform_wear.txt','wt')
mfprintf(res2,"When a clutch is new, the pressure may be rather uniform.\nIf the surfaces are relatively rigid, the outer portion, where velocity is high,\nwill wear more than inner portion.\n")
mfprintf(res2,"After the initial wearing-in,it is reasonable to assume that the curve of the profile will maintain its shape;\nor, the wear thereafter may be considered to be uniform.\n")
mfprintf(res2,"Uniform wear can be expressed in a different way by saying that\nat any time interval, the work done per unit area is constant:\n")
mfprintf(res2,"[(frictional force)*(velocity)]/area = \n\t[(f*p*2*pi*r dr)*(rw)]/(2*pi*r dr) = constant C\n")
mfprintf(res2,"or\n\tp=C''/f*r*w\t Since f and w are constant,")
mfprintf(res2,"\n\tp=C/r, where C is constant.\n")
mfprintf(res2,"An alternate method of showing that pressure varies inversely as the radius is\nto consider that wear (delta) is proportional to pressure p and velocity V.\n")
mfprintf(res2,"Thus \n\t(delta)=K*p*V=K*p*(r*w),\nor\n\tp=C/r\t\tsince (delta) and K are constants and w is fixed for a given clutch.\n")
mfprintf(res2,"The differential frictional torque=dT= r(f*p(2*pi*r dR));\n\n")
mfprintf(res2,"Intergrating with respect to r over r=Ri to r=Ro,\nwe get the total torque as\n")
mfprintf(res2,"\t\tT=2*pi*f*C[((Ro^2)-(Ri^2))/2]\n\n")
mfprintf(res2,"To find C, we can integrate p(2*pi*r dr) with respect to r over r=Ri to r=Ro\n")
mfprintf(res2,"We get\n\t\tC=F/(2*pi*(Ro-Ri))\n\n")
mfprintf(res2,"Substituting this value of C into T\n")
mfprintf(res2,"We obtain\n\n")
mfprintf(res2,"\t\tT=F*f*[(1/2)*(Ro+Ri)] = F*f*Rf")
mclose(res2)
editor(TMPDIR+'2_derivation_of_torque_uniform_wear.txt')
//------------------------------------------------------------------------------
//-------------------------------End of program---------------------------------