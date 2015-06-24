//To find speeds and permissible angle
clc
//Given:
N=1200,q=100 //rpm
//Solution:
//Calculating the greatest permissible angle between the centre lines of the shafts
alpha=acos((-(100/1200)+sqrt(0.083^2+4))/2)*180/%pi //degrees
//Calculating the maximum speed of the driven shaft
N1max=N/cosd(alpha) //rpm
//Calculating the minimum speed of the driven shaft
N1min=N*cosd(alpha) //rpm
//Results:
printf("\n\n Greatest permissible angle between the centre lines of the shafts, alpha = %.1f degrees.\n",alpha)
printf(" Maximum speed of the driven shaft, N1(max) = %d rpm.\n",N1max)
printf(" Minimum speed of the driven shaft, N1(min) = %d rpm.\n\n",N1min)