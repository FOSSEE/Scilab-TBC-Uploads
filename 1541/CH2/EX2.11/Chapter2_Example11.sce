//Chapter-2, Example 2.11, Page 2.18
//=============================================================================
clc
clear

//INPUT DATA
K=(330/110);//Turn ratio
N1=110;//Number of turns in the primary
N2=330;//Number of turns in the secandary
V1=4000;//Primary voltage in V
f=50;//Supply frquency in Hz
Z2=complex(120,40);//Secondary load

//CALCULATIONS
q=(V1/(4.44*N1*f));//Flux in Wb
V2=(K*V1);//Secondary voltage in V
I2=(V2/Z2);//Secondary current in A
I1=K*I2;//Primary current in A
S=(V1*I1)/1000;//Transformer rating
P1=(V1*sqrt((real(I1))^2+(imag(I1))^2)*cosd((atand(imag(I1)/real(I1)))))/1000;//Real power in kW
R1=(V1*sqrt((real(I1))^2+(imag(I1))^2)*sind(-(atand(imag(I1)/real(I1)))))/1000;//Reactive power in KVAR
Zeq=(V1/I1);//Transformer equivalent impedence 
a1=sqrt((real(I1))^2+(imag(I1))^2);
a2=sqrt((real(I2))^2+(imag(I2))^2);
b1=real(Zeq);
b2=imag(Zeq);

//OUTPUT
mprintf('a)Maximum flux in the core is %3.3f Wb\n(b)Primary current is %3.2f A and Secondary current is %3.2f A\n(c)Real power is %3.0f KW and Reactive power is %3.0f KVAR\n(d)Value of impedence consumed is %3.1f+j%3.1f',q,a1,a2,P1,R1,b1,b2)

//=================================END OF PROGRAM==============================
