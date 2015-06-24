//Chapter-2, Example 2.33, Page 2.64
//=============================================================================
clc
clear

//INPUT DATA
L=400;//Constant or Iron losses in W
C=700;//Full load copper loss in W
Q=40000;//Rating of transformer in VA
cosq=0.85;//Load power factor

//CALCULATIONS
P=(Q*cosq);//Full load output in W
LC=(L+C);//Total full load losses in W
IP=(P+LC);//Full load input in W
n=(P/IP)*100;//Full load efficiency
P2=(0.5*Q*cosq);//Half load output in W
LC2=(L+(0.5^2*C));//Total losses at half loads in W
IP2=(P2+LC2);//Half load input in W
n2=(P2/IP2)*100;//Half load efficiency

//OUTPUT
mprintf('Efficiency of the transformer at full load is %3.2f percent \nEfficiency of the transformer at half load is %3.2f percent',n,n2)

//=================================END OF PROGRAM==============================
