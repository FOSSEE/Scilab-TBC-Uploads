//To determine the standard deviation and probable measurement
//example 2-6 in page 26
clc;
//given data
V=[1.001 1.002 0.999 0.998 1.000];// 5 digital voltmeters readings in matrix V in volts
//calculation
Vavg=sum(V)/5;// average of 5 readings in volts
D=abs(V-Vavg);//deviation of each reading from the average in volts
D1=D.*D;// get the square of each deviation
x=sum(D1);// sum of the squares of the deviation
sigma=sqrt(x/5);// standard deviation in volts
printf("standard deviation=%.4f V\n",sigma);
eP=0.6745*0.0014;//probable error in volts and sigma=0.0014 V
printf("probable error=%.2f mV",eP*1000);
//result
//standard deviation=0.0014 V
//propable error=0.94 V