//calculating the average force and range of error
clc;
F1=10.03;
F2=10.10;
F3=10.11;
F4=10.08;
Fav=(F1+F2+F3+F4)/4;
disp(Fav,'Average Force(N) =');
Fmax=F3;
MaxR=Fmax-Fav;
Fmin=F1;
MinR=Fav-Fmin;
AvgR=(MaxR+MinR)/2;
disp(AvgR,'Average range of error (N)=')