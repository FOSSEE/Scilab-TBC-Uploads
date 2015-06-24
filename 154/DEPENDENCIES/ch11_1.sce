clc
disp("Problem 11.1")
printf("\n")

printf("Given")
disp("Resistance =1000ohm")
t=0:0.5:1;
i=1;i1=-1;
figure
a=gca()
plot(t,i,t+1,i1,t+2,i,t+3,i1)
xtitle("i vs t",'t in ms','i in mA')
i=1*10^-3;R=1000;
//p=i^2*R
p=i^2*R;
figure
a=gca()
plot(t,p)
xtitle("p vs t",'t in ms','p in mW')

