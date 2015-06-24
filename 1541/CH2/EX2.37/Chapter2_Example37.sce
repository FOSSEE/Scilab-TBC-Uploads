//Chapter-2, Example 2.37, Page 2.68
//=============================================================================
clc
clear

//INPUT DATA
nFL=0.98;//Efficiency of transformer at full load 0.8 power factor
upf=0.99;//Efficiency of the transformer at half load
Q=500;//Transformer rating in KVA
cosq=0.8;//Power facotor

//CALCULATIONS
L=((Q*1000*cosq)/nFL)-(Q*1000*cosq);//Full load losses in W
L2=((0.5*Q*1000*100)/99)-(0.5*Q*1000);//Half load losses in W
A=[0.25,0.25;
   1,0.25]
B=[(0.25*L);
    L2]
A=inv(A)*B;//Soving for Pi and Pc


//OUTPUT
mprintf('Constant losses are %3.2f W\nFull load copper losses are %3.2f W',A(1),A(2))

//=================================END OF PROGRAM==============================
