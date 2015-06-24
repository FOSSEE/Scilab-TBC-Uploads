//Chapter-2, Example 2.17, Page 2.32
//=============================================================================
clc
clear

//INPUT DATA
R1=3.5;//Primary Resistance in ohm
X1=5.2;//Primary reactance in ohm
R2=0.01;//Secondary Resistance in ohm
X2=0.02;//Secondary reactance in ohm
Q=40000;//Rating of the transformer in VA
V1=4000;//Primary voltage in V
V2=200;//Secondary voltage in V

//CALCULATIONS
Z1=complex(R1,X1);//Primary impedence
Z2=complex(R2,X2);//Secondary impedence
I1=(Q/V1);//Primary current in A
I2=(Q/V2);//Secondary current in A
K=(I1/I2);//Current ratio
Ro1=(R1+(R2/K^2));//Resistance referred to primary in ohm
Xo1=(X1+(X2/K^2));//Reactance referred to primary in ohm
Zo1=(Z1+(Z2/K^2));//Impedence referred to primary in ohm
Ro2=(R2+(R1*K^2));//Resistance referred to secndary in ohm
Xo2=(X2+(X1*K^2));//Reactance referred to secondary in ohm
Zo2=(Z2+(Z1*K^2));//Impedence referred to secondary in ohm
a1=real(Zo1);
a2=imag(Zo1);
a3=real(Zo2);
a4=imag(Zo2);

//OUTPUT
mprintf('(a)Resistance referred to primary is %3.1f ohm \n Reactance referred to primary is %3.1f ohm \n Impedence referred to primary is %3.1f+j%3.1f ohm \n\n(b)Resistance referred to secndary is %3.5f ohm \n Reactance referred to secondary is %3.3f ohm \n Impedence referred to secondary is %3.5f+j%3.3f ohm',Ro1,Xo1,a1,a2,Ro2,Xo2,a3,a4)

//=================================END OF PROGRAM==============================
