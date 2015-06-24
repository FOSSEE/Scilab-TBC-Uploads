//To find number of teeth
clc
//Given:
dD=224, m=4 //mm
//Solution:
//Refer Table 13.8
//Calculating the values of x and y
y=+1
x=+5-y
//Calculating the number of teeth on gear D
TD=dD/m
//Calculating the number of teeth on gear B
TB=y/x*TD
//Calculating the number of teeth on gear C
TC=(TD-TB)/2
//Results:
printf("\n\n Number of teeth on gear D, TD = %d.\n\n",TD)
printf(" Number of teeth on gear B, TB = %d.\n\n",TB)
printf(" Number of teeth on gear C, TC = %d.\n\n",TC)