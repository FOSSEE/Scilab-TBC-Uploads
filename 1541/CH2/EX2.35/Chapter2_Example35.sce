//Chapter-2, Example 2.35, Page 2.66
//=============================================================================
clc
clear

//INPUT DATA
V1=5000;//Primary voltage in V
V2=200;//Secondary voltage in V
Q=60000;//Rating of transformer in VA
R1=8;//Primary resistance in ohm
R2=0.009;//Secondary resistance in ohm
Io=0.4;//No load primary current in A
cosq=0.29;//Power factor

//CALCULATIONS
K=(V2/V1);//Turn ratio
Cu=((Q/V1)^2*(R1+(R2/K^2)));//Full load copper losses in W
C=(V1*Io*cosq);//Constant losses in W
I1=(Q/V1);//Primary current in A
nFL=((V1*I1*0.8)/((V1*I1*0.8)+(Cu+C)))*100;//Full load efficiency of the transformer

//CALCULATIONS
mprintf('Full load efficiency of the transformer is %3.2f percent',nFL)

//=================================END OF PROGRAM==============================
