//ques-25.28
//Calculating surface tension of a liquid
clc
r=0.01;//radius of capillary tube (in cm)
h=6;//height (in cm)
d=0.8;//density of liquid (in g/mL)
g=981;//(in dynes/cm^2)
st=(1/2)*r*h*d*g;
printf("The surface tension of the liquid is %.2f dynes/cm.",st);
