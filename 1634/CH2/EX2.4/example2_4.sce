

//exapple 2.4 
clc; funcprot(0);
// Initialization of Variable
//part1
pi=3.14259;
H=1200;//altitude
h=80;//elevation of hill
f=15/100;
R80=f/(H-h);
disp(R80,"representative fraction of hill is (times):");
//part2
h=300;//elevation of hill
R300=f/(H-h);
disp(R300,"representative fraction of hill is (times):");
