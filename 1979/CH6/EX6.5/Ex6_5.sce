//Chapter-6, Example 6.5, Page 239
//=============================================================================
clc;
//Input parameters
[S]=[0.5,-0.5,0.707;-0.5,0.5,0.707;0.707,0.707,0];
R1=60;//load at port1 in ohms
R2=75;//load at port2 in ohms
R3=50;//characteristic impedance in ohms
P3=20*10^-3;//power at port 3 in Watts
//calculations
p1=(R1-R3)/(R1+R3);
p2=(R2-R3)/(R2+R3);
P1=0.5*P3*(1-(p1)^2);//power delivered to the port1 in Watts
P2=0.5*P3*(1-(p2)^2);//power delivered to the port2 in Watts
//Output
mprintf("Thus power delivered to the port1 and port2 are %g W,%g W respectively",P1,P2);
//=================================END OF PROGRAM==============================
