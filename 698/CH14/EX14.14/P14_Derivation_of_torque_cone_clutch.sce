clc
//Example 14.14 
//Derivation of torque capacity of a cone clutch

//------------------------------------------------------------------------------
//This example is derivation based, hence the code will comprise only of statements printed to text file
//Printing result file to .txt
res14=mopen(TMPDIR+'14_derivation_of_torque_cone_clutch.txt','wt')
mfprintf(res14,"Consider a differential element bounded by circles of radii r and (r+dr).\nThe area of the differential frustrum of a cone is\n")
mfprintf(res14,"\t\tdA=2*pi*r[dr/sin (alpha)]\n\n")
mfprintf(res14,"Integrating the differential torque with respect to r over r=Ri to r=Ro,\nwe get\n")
mfprintf(res14,"\t\tT=[(2*pi*p*f)/sin (alpha)]*[((Ro^3)-(Ri^3))/3]\n\n")
mfprintf(res14,"Define the force Fn as that due to the pressure applied\nto the area as if it were stretched out into a plane:\n")
mfprintf(res14,"\t\tF=p(2*pi*Rm*b)\n\n")
mfprintf(res14,"To relate Fn to the axial force F,consider a differential element\nwith central angle d(phi).\nThe differential area is\n")
mfprintf(res14,"\t\tdA=2*pi*Rm*b*(d(phi)/(2*pi))\n\t\t =Rm*b*d(phi)\n")
mfprintf(res14,"The differential normal force is\n\tdN=p*Rm*b*d(phi)*sin(alpha)\nThe horizontal component of the differential force is dF; then\n")
mfprintf(res14,"Integrating with respect to (phi) over (phi)=0 to (phi)=2*pi\nwe get\n")
mfprintf(res14,"\t\tF=2*pi*p*Rm*b*sin(alpha)\n\t\t =Fn*sin(alpha)\n\n")
mfprintf(res14,"Substituting equation of p in equation of T, we get\n")
mfprintf(res14,"\t\tT=[(Fn*f)/(Rm*b*sin (alpha))]*[((Ro^3)-(Ri^3))/3]\n\n")
mfprintf(res14,"\t\t =(Fn*f)*[(2/3){((Ro^3)-(Ri^3))/((Ro^2)-(Ri^2))}]\n\n")
mfprintf(res14,"\t\t =[(F*f)/sin (alpha)]*[(2/3){((Ro^3)-(Ri^3))/((Ro^2)-(Ri^2))}]\n\n")
mfprintf(res14,"since\nRm=(Ro+Ri)/2\n(b*sin (alpha))=Ro-Ri\nand Fn=F/sin (alpha)")
mclose(res14)
editor(TMPDIR+'14_derivation_of_torque_cone_clutch.txt')
//------------------------------------------------------------------------------
//-------------------------------End of program---------------------------------