//Finding of Cv,Cc
//Given
H=0.6;
x=0.1;
y=0.0045;
Cd=0.6;
//To Find
a=sqrt(4*y*H);
Cv=x/a;
Cc=Cd/Cv;
disp("Cv ="+string(Cv)+" No units");
disp("Cc ="+string(Cc)+" No units");
