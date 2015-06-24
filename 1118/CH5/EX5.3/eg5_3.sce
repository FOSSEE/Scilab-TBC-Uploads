clear;
clc;

n=3;
c=[1.6 0 -1;1 0 0 ;1 1 1];//coeffient matrix
b=[0.109;.31;1];

v=inv(c)*b;
for i=1:1:3
    printf("The voltage across unit%d is:%.2f pu\n",i,v(i))
end

eff=1/(n*v(n));
printf("\n the string efficiency is:  %.2f percent\n",eff*100);

//with the string grading
a=[3.6037 0 0;1.3037 0 -1 ;1 1 1];//coeffient matrix
d=[1.1889;0.0389;1];

v=inv(a)*d;
for i=1:1:3
    printf("The voltage across unit%d is:%.2f pu\n",i,v(i))
end

eff=1/(n*v(n));
printf("\n the string efficiency is:  %.2f percent",eff*100);
//difference in answers is due to miscalculations
