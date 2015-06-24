// sum 30-1
clc;
clear;
n1=17;
n2=51;
C=300;
p=9.52;
Ln=(2*C/p)+((n1+n2)/2)+((((n2-n1)/(2*%pi))^2)*(p/C));
x=(Ln-((n2+n1)/(2)))^2;
y=8*(((n2-n1)/(2*%pi))^2);
z=Ln-((n1+n2)/2);
C=(p/4)*(z+(sqrt(x-y)))


  // printing data in scilab o/p window
  printf("C is %0.2f mm ",C);
  
