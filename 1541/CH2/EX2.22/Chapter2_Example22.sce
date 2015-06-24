//Chapter-2, Example 2.22, Page 2.40
//=============================================================================
clc
clear

//INPUT DATA
L2=7500;//Load on secondary in W
V2=220;//Secondary voltage in V
cosq=0.8;//Power factor
R2=0.05;//Secondary resistance in ohm
X2=0.75;//Secondary reactance in ohm
V2i=200;//Secondary voltage in V

//CALCULATIONS
I2=(L2/(V2*cosq));//Secondary current in A
q=acosd(cosq);//Phase angle in degree
I2c=complex((I2*cosd(q)),(I2*sind(-q)));//I2 in complex form
Z2=complex(R2,X2);
E2=(V2i+(I2c*Z2));//Induced imf in V
a1=real(E2);
a2=imag(E2);

//OUTPUT
mprintf('Induced emf in the secondary is %3.2f+j%3.2f',a1,a2)

//=================================END OF PROGRAM==============================
