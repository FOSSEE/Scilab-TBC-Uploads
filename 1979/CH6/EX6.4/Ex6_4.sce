//Chapter-6, Example 6.4, Page 238
//=============================================================================
clc;
//Input parameters
a1=32*10^-3;//power in watts
a2=0;
a3=0;
//Calculations
[S]=[0.5,-0.5,0.707;-0.5,0.5,0.707;0.707,0.707,0];//S-matrix for H-plane tee
//[B]=[b1,b2,b3]
[B]=[S].*[a1,0,0;0,0,0;0,0,0];
b1=(0.5)^2*a1;//power at port 1
b2=(-0.5)^2*a1;//power at port 2
b3=(0.707)^2*a1;//power at port 3
//Output
mprintf("Thus b1,b2,b3 are %g W,%g W,%g W respectively",b1,b2,b3);
//=================================END OF PROGRAM==============================
