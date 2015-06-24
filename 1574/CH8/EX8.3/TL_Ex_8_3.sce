
clc
//Chapter8
//Example8.3, page no 315
//Given
f=1600
w=1000
Zoc=2460*exp(%i*-86.5*%pi/180)// Open circuited Line impedance
Zsc=21.5*exp(%i*14*%pi/180)// Short circuited Line impedance
Zo=sqrt(Zoc*Zsc)// Characteristic impedance
A=real(sqrt(Zsc/Zoc))// tan(a+ jBeta) = A + jB
B=imag(sqrt(Zsc/Zoc))
l=1/4
alpha=(1/(4*l))*log(((1+A^2+B)^2)/(((1-A)^2)+B^2)) //Attenuation Constant
Beta=(1/(2*l))*atan((2*B)/(1-A^2-B))  //phase constant

//the tx-Line parameters
R=real(Zo*complex(alpha,Beta))
L=imag(Zo*complex(alpha,Beta))
G=real(complex(alpha,Beta)/Zo)
C=imag(complex(alpha,Beta)/Zo)
mprintf('The Characteristic impedance:Zo= ') ,disp(Zo)
mprintf('The value of Alpha= %f nepere/km\n',alpha)
mprintf('The value of Beta= %f \n',Beta)
mprintf('the tx-Line parameters are\nR= %f ohms\nL= %f mH\nG= %f umhos\nC= %f mF\n',R,L,G*1e6,C*1e3)

// Note :  There are some calculation errors in the solution presented in the book
