

//exapple 1.18 
clc; funcprot(0);
// Initialization of Variable
//part1
A=50+12/60+48/3600;
time=A/15*3600
hr=round(time/3600);
b=time-hr*3600;
mi=round(b/60-1);
c=time-hr*3600-mi*60;
disp("time is" );
disp(hr,"hours");
disp(mi,"minutes");
disp(c,"seconds");
//part2
A=8+18/60+6/3600;
time=A/15*3600
hr=round(time/3600);
b=time-hr*3600;
mi=round(b/60);
c=time-hr*3600-mi*60;
disp("time is" );
disp(hr,"hours");
disp(mi,"minutes");
disp(c,"seconds");
//part3
A=258+36/60+30/3600;
time=A/15*3600
hr=round(time/3600);
b=time-hr*3600;
mi=round(b/60);
c=time-hr*3600-mi*60;
disp("time is" );
disp(hr,"hours");
disp(mi,"minutes");
disp(c,"seconds");

