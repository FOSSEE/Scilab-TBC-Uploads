//To find the greatest permissible angle
clc
//Given:
N=500 //rpm
//Solution:
//Calculating the angular velocity of the driving shaft
omega=2*%pi*N/60 //rad/s
//Calculating the total fluctuation of speed of the driven shaft
q=12/100*omega //rad/s
//Calculating the greatest permissible angle between the centre lines of the shafts
alpha=acos((-(q/omega)+sqrt(0.12^2+4))/2)*180/%pi //degrees
//Results:
printf("\n\n Greatest permissible angle between the centre lines of the shafts, alpha = %.2f degrees.\n\n",alpha)