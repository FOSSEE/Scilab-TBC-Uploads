//To find speed of road wheel
clc
//Given:
TA=10, TB=60
NA=1000, NQ=210, ND=NQ //rpm
//Solution:
//Refer Fig. 13.24 and Table 13.20
//Calculating the speed of crown gear B
NB=NA*(TA/TB) //rpm
//Calculating the values of x and y
y=200
x=y-210
//Calculating the speed of road wheel attached to axle P
NC=x+y //Speed of road wheel attached to axle P, rpm
//Results:
printf("\n\n Speed of road wheel attached to axle P = %d rpm.\n\n",NC)