//ques-4.1
//Calculating total pollution load of sample air
clc
c1=5;//Content of sulphur dioxide (in ppm)
c2=20;//Content of nitrogen dioxide (in ppm)
m3=8;//Content of carbon monoxide (in micrograms/m^3)
c3=(m3/1000)*(22.4/28);//Content of carbon monoxide (in ppm)
T=c1+c2+c3;//total
printf("Total pollution load of sample air is %.4f ppm.",T);
