//To find speed of gear F
clc
//Given:
NA=975 //rpm
TA=20, TB=50, TC=25, TD=75, TE=26, TF=65
//Solution:
//Calculating the speed of gear F
NF=NA*(TA*TC*TE)/(TB*TD*TF) //rpm
//Results:
printf("\n\n Speed of gear F, NF = %d rpm.\n\n",NF)