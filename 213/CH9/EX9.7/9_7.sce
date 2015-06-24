//To find speeds of shafts
clc
//Given:
alpha=20 //degrees
NA=500 //rpm
//Solution:
//Calculating the maximum speed of the intermediate shaft
NBmax=NA/cosd(alpha) //rpm
//Calculating the minimum speed of the intermediate shaft
NBmin=NA*cosd(alpha) //rpm
//Calculating the maximum speed of the driven shaft
NCmax=NBmax/cosd(alpha) //rpm
//Calculating the minimum speed of the driven shaft
NCmin=NBmin*cosd(alpha) //rpm
//Results:
printf("\n\n Maximum speed of the intermediate shaft, NB(max) = %.1f rad/s.\n",NBmax)
printf(" Minimum speed of the intermediate shaft, NB(min) = %.2f rad/s.\n",NBmin)
printf(" Maximum speed of the driven shaft, NC(max) = %.2f rad/s.\n",NCmax)
printf(" Minimum speed of the driven shaft, NC(min) = %.1f rad/s.\n",NCmin)