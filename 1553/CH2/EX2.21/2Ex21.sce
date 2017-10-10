//chapter 2 Ex 21
clc;
clear;
close;
t1=48; t2=72; t3=108;
Hours=8; Min=20;
t=lcm(int32([t1,t2,t3]));
Lcm=double(t);
mins=Min+(t/60);
Sec=pmodulo(Lcm,60);
mprintf("The required time is %d min and %d sec",t/60,Sec);
mprintf("\n Thus simultaneous change will take place at %d hours %d mins and %d secs",Hours,mins,Sec);
