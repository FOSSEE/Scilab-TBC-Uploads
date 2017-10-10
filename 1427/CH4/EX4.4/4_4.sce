//ques-4.4
//Calculating BOD of sample
clc
o1=920;//Initial dissolved oxygen (in ppm)
o2=260;//Final dissolved oxygen (in ppm)
v1=100;//Waste water (in mL)
v2=100;//Distilled water (in mL)
ans=(o1-o2)*((v1+v2)/v1);//BOD
printf("BOD of given sample is %d ppm.",ans);
