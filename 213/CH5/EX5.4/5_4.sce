//To find the time ratio
clc
//Given:
CD=50,CA=75,PA=150,PR=135 //mm
//Solution:
//Refer Fig. 5.32 and Fig. 5.33
//Calculating the cosine of angle beta
CA2=CA
cosbeta=CD/CA2
//Calculating the angle beta
beta=2*acos(cosbeta)*180/%pi //degrees
//Calculating the ratio of time of cutting stroke to time of return stroke
r=(360-beta)/beta //Ratio of time of cutting stroke to time of return stroke
//Calculating the length of effective stroke
R1R2=87.5 //mm
//Results:
printf("\n\n The ratio of time of cutting stroke to time of return stroke is %.3f.\n",r)
printf(" The length of effective stroke, R1R2 = %.1f mm.\n\n",R1R2)