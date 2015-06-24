clear;
clc;

p1max=200;
p2max=p1max;
p1min=50;
p2min=p1min;

p1=p1min;
p2=p1;
ic1=.16*p1+30;
ic2=.20*p2+25;
printf("For the plant output %.2f MW p1=%.2fMW   p2=%.2fMW\n",(p1+p2),p1,p2);

for ic=40:5:60
    ic1=ic;
    ic2=ic;
     
        p1=(ic1-30)/.16;
    p2=(ic2-25)/.20;
   
    printf("For the plant output %.2f MW p1=%.2fMW   p2=%.2fMW\n",(p1+p2),p1,p2);
    end

p1=200;
p2=200;
printf("For the plant output %.2f MW p1=%.2fMW   p2=%.2fMW\n",(p1+p2),p1,p2);

