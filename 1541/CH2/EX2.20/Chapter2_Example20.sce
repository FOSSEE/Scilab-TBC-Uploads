//Chapter-2, Example 2.20, Page 2.37
//=============================================================================
clc
clear

//INPUT DATA
K=(1/20);//Turn ratio
R1=30;//Primary resistance in ohm
R2=0.08;//Secondary resistance in ohm
X1=80;//Primary reactance in ohm
X2=0.3;//Secondary reactance in ohm
I=1.5;//No load current in A
cosqo=0.5;//Power factor
I2=200;//Load current in A
V2=500;//Secondary terminal voltage in V
cosq2=0.8;//Load power factor
q3=60;//Phase angle in degree

//CALCULATIONS
q2=(acosd(cosq2));//Phase angle in degree
I2i=complex((I2*cosd(q2)),(I2*sind(-q2)));//Load current in complex form
V2i=complex(V2,0);//Secondary terminal voltage in complex form
Z2=complex(R2,X2);//Impedence in complex form
E2=(V2i+(I2i*Z2));//Terminal voltage in V
E1=(sqrt((real(E2))^2+(imag(E2))^2)/K);//Primary voltage in V
I2c=(K*I2);//Secondary current in A
I21c=complex((I2c*cosd(q2)),(I2c*sind(-q2)));//Load current in complex form
Io=complex((I*cosd(-q3)),(I*sind(-q3)));//No load current in A
I1c=(Io+I21c);//Total current
Z1=complex(R1,X1);//Primary impedence
V1=(E1+(I1c*Z1));//Primary applied voltage 
V1i=(sqrt((real(V1))^2+(imag(V1))^2));//Primary applied voltage in V
A=((atand(imag(V1)/real(V1)))-((atand(imag(I1c)/real(I1c)))));//Angle between V1 and I1 in degree
p=cosd(A);//Power factor
Cu=(I2^2*(R2+(K^2*R1)));//Copper losses in W
C=(V1i*sqrt((real(Io))^2+(imag(Io))^2)*cosqo);//Constant losses in W
P=(V2*I2*cosq2);//Output power in W
n=(P/(P+Cu+C))*100;//Efficiency

//OUTPUT
mprintf('Primary applied voltage is %3.2f V\nPrimary power factor is %3.2f \nEfficiency is %3.2f percent',V1i,p,n);

//=================================END OF PROGRAM==============================
