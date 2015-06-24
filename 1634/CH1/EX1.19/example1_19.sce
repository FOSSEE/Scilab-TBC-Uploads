

//exapple 1.19 
clc; funcprot(0);
// Initialization of Variable
//part1
A=4+34/60+13/3600;
angle=A*15*3600;
deg=round(angle/3600-1);
b=angle-deg*3600;
mi=round(b/60);
c=angle-deg*3600-mi*60;
disp("angle is" );
disp(deg,"degrees");
disp(mi,"minutes");
disp(c,"seconds");
//part2
A=18+11/60+38/3600;
angle=A*15*3600;
deg=round(angle/3600-1);
b=angle-deg*3600;
mi=round(b/60-1);
c=angle-deg*3600-mi*60;
disp("angle is" );
disp(deg,"degrees");
disp(mi,"minutes");
disp(c,"seconds");
