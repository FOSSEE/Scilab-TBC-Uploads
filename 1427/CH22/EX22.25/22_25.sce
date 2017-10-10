//ques-22.25
//Determining interplanar spacing of 200 and 220 planes
clc
r=174.6;//radius (in pm)
a=r*sqrt(8);//edge length in FCC (in pm)
d200=a/sqrt(2^2+0+0);
d220=a/sqrt(2^2+2^2+0);
printf("The interplanar spacing of plane 200 is %.1f pm and for plane 220 is %.1f pm.",d200,d220);
