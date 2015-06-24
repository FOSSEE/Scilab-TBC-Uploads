// 2.54
clc;
disp('Let T=1');
T=1;
el=0.95;
tc=-T/log(el);
printf("Time constant =%.2f s",tc)
disp('as T=1 so time constant should be approximately equal to 20T')