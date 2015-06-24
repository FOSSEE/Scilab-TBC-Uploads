//Example 5,Chapter 3
clc;
f=50 //Frequency in hertz
Im=9.2 //Current in amperes
//(i)
t=0.002
i=Im*sin(2*%pi*f*t)
printf("\n Instantaneous value of current=%.2f A \n",i)
//(ii)
t=0.0045
t=(1/(4*f))+0.0045
i=Im*sin(2*%pi*f*t)
printf("\n Instantaneous Value=%.2f A \n",i)
