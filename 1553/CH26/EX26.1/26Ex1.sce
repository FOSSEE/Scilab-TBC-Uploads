//chapter 26 Ex 1

clc;
clear;
close;
Dist=28; t=7; 
Btime=(t/Dist)*1000;
Atime=Btime-t;
Atime_min=(round(Atime/60));
Atime_sec=(modulo(Atime,240));
printf("Time of A over course is %d min %d sec",Atime_min,Atime_sec);
