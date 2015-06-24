clc
//Initialization of variables
ratio=0.15
//calculations
VU= (1/(1-ratio))^(1/3)
percent= (VU-1)*100
//results
printf("percent increase in speed = %.1f ",percent)
