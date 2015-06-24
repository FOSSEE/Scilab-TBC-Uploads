clc;
//page no 694
//prob no. 18.3.2
//A TV system with
N=525;P=30;
//Determination of horizontal and vertical synchhronization freq.
fh=N*P;
disp('Hz',fh,'the horizontal freq. is ');
fv=2*P;
disp('Hz',fv,'the vertical freq. is ');
//Determination of time reqd to scan one line
Th=(1/fh);
disp('sec',Th,'the time reqd to scan one line is ');
