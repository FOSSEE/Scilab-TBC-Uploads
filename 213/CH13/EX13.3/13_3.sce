//To find the number of teeth
clc
//Given:
rAD=12 //Speed ratio, NA/ND
mA=3.125, mB=mA, mC=2.5, mD=mC, x=200 //mm
//Solution:
//Calculating the speed ratio between the gears A and B, and C and D
rAB=sqrt(rAD) //Speed ratio between the gears A and B
rCD=sqrt(rAB) //Speed ratio between the gears C and D
//Calculating the ratio of teeth on gear B to gear A
rtBA=rAB //Ratio of teeth on gear B to gear A
//Calculating the ratio of teeth on gear D to gear C
rtDC=rCD //Ratio of teeth on gear D to gear C
//Calculating the number of teeth on the gears A and B
//Distance between the shafts, x = mA*TA/2+mB*TB/2, or (mA/2)*TA+(mB/2)*TB = x        .....(i)
//Ratio of teeth on gear B to gear A, TB/TA = sqrt(12), or sqrt(12)*TA-TB = 0         .....(ii)
A=[mA/2 mB/2; sqrt(12) -1]
B=[x; 0]
V=A \ B
TA=int(V(1))
TB=round(V(2))
//Calculating the number of teeth on the gears C and D
//Distance between the shafts, x = mC*TC/2+mD*TD/2, or (mC/2)*TC+(mD/2)*TD = x        .....(iii)
//Ratio of teeth on gear D to gear C, TD/TC = sqrt(12), or sqrt(12)*TC-TD = 0         .....(iv)
A=[mC/2 mD/2; sqrt(12) -1]
B=[x; 0]
V=A \ B
TC=round(V(1))
TD=int(V(2))
//Results:
printf("\n\n Number of teeth on gear A, TA = %d.\n\n",TA)
printf(" Number of teeth on gear B, TB = %d.\n\n",TB)
printf(" Number of teeth on gear C, TC = %d.\n\n",TC)
printf(" Number of teeth on gear D, TD = %d.\n\n",TD)