//To find the dimensions of AC and AP
clc
//Given:
//Refer Fig. 5.30 and Fig. 5.31
BC=30,R1R2=120 //mm
r=1.7 //Time ratio of working stroke to the return stroke
//Solution:
//Calculating the angle alpha
alpha=360/(1.7+1) //degrees
//Calculating the length of the link AC
B1C=BC
AC=B1C/cosd(alpha/2) //mm
//Calculating the length of the link AP
AP1=R1R2/(2*cosd(alpha/2)) //mm
AP=AP1
//Results:
printf("\n\n The length of AC = %.1f mm.\n",AC)
printf(" The length of AP = %.1f mm.\n\n",AP)