clear;
//clc();
q1=round(acosd(0.707));

q2=round(acosd(0.866));

x=8000;

y=x*((cosd(q2)- cosd(q1))/sind(q1-q2));
printf("the limiting cost per kvar is:%.2f Rs",y);
//difference in answer is due to the approximation of decimals
