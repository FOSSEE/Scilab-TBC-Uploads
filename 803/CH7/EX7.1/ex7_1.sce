clc
D1=127;................................//Array aperture
D2=67;
D3=335;
f1=3*(10^6);..//frequency at 3MHz
f2=30*(10^6);..//frequency at 30MHz
c=3*(10^8);
lambda1=c/f1;
lambda2=c/f2;
R1=2*(D1^3) ./lambda1;
R2=2*(D2^3) ./lambda1;
R3=2*(D3^3) ./lambda1;
R4=2*(D1^3) ./lambda2;
R5=2*(D2^3) ./lambda2;
R6=2*(D3^3) ./lambda2;
disp("m",R1,"Range at 3MHz");
disp("m",R2,"Range at 3MHz");
disp("m",R3,"Range at 3MHz");
disp("m",R4,"Range at 30MHz");
disp("m",R5,"Range at 30MHz");
disp("m",R6,"Range at 30MHz");