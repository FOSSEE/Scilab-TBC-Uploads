//To find the time ratio
clc
//Given:
AC=300,CB1=120 //mm
//Solution:
//Refer Fig. 5.28
//Calculating the sine of inclination of the slotted bar with the vertical
sineCAB1=CB1/AC
//Calculating the inclination of the slotted bar with the vertical
angleCAB1=asin(sineCAB1)*180/%pi //degrees
//Calculating the angle alpha
alpha=2*(90-angleCAB1) //degrees
//Calculating the ratio of time of cutting stroke to time of return stroke
r=(360-alpha)/alpha //Ratio of time of cutting stroke to time of return stroke
//Results:
printf("\n\n The ratio of the time of cutting stroke to the time of return stroke is %.2f.\n\n",r)