//To find the time ratio
clc
//Given:
AC=240,CB1=120,AP1=450 //mm
//Solution:
//Refer Fig. 5.29
//Calculating the sine of inclination of the slotted bar with the vertical
sineCAB1=CB1/AC
//Calculating the inclination of the slotted bar with the vertical
angleCAB1=asin(sineCAB1)*180/%pi //degrees
//Calculating the angle alpha
alpha=2*(90-angleCAB1) //degrees
//Calculating the time ratio of cutting stroke to the return stroke
r=(360-alpha)/alpha //Time ratio of cutting stroke to the return stroke
//Calculating the length of the stroke
R1R2=2*AP1*sin(%pi/2-alpha/2*%pi/180) //mm
//Results:
printf("\n\n The time ratio of cutting stroke to the return stroke is %d.\n",r)
printf(" The length of the stroke, R1R2 = P1P2 = %d mm.\n\n",R1R2)