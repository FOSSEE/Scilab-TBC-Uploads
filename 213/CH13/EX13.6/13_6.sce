//To find speed of gears B and C
clc
//Given:
TA=72, TC=32
NEF=18 //Speed of arm EF, rpm
//Solution:
//Refer Table 13.5
//Speed of gear C:
y=18 //rpm
x=y*(TA/TC)
NC=x+y //Speed of gear C, rpm
//Speed of gear B:
//Calculating the number of teeth on gear B
TB=(TA-TC)/2
//Calculating the speed of gear B
NB=y-x*(TC/TB) //Speed of gear B, rpm
//Solution:
printf("\n\n Speed of gear C = %.1f rpm.\n\n",NC)
printf(" Speed of gear B = %.1f rpm in the opposite direction of arm.\n\n",-NB)