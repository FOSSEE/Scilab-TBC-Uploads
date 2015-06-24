//To find speed of gear B
clc
//Given:
TA=36, TB=45
NC=150 //rpm, anticlockwise
//Solution:
//Refer Fig. 13.7
//Algebraic method:
//Calculating the speed of gear B when gear A is fixed
NA=0, NC=150 //rpm
NB1=(-TA/TB)*(NA-NC)+NC //rpm
//Calculating the speed of gear B when gear A makes 300 rpm clockwise
NA=-300 //rpm
NB2=(-TA/TB)*(NA-NC)+NC //rpm
//Results:
printf("\n\n Speed of gear B when gear A is fixed, NB = %d rpm.\n\n",NB1)
printf(" Speed of gear B when gear A makes 300 rpm clockwise, NB = %d rpm.\n\n",NB2)