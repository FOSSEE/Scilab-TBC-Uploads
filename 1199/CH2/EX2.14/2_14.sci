// 2.14
clc;
mo=0.8;
sr=250;
sm=sr/mo;
R=sm*1*10^-3;
printf("Resolution of 1mm movement = %.4f degree/mm",R)
Rq=300/1000;
printf("\nRequired Resolution of 1mm movement = %.3f degree/mm",Rq)
disp('Since the resolution of potentiometer is higher than the resolution required so it is suitable for the application')