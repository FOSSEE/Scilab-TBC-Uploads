clc;
//Example 1.12
//Page no 25


//Solution

V1=8;
V2=0.2;
V3=0.1;

//(a)


h1=2*1;

disp('kHz',h1,"2nd harmonic = ");

h2=3*1;

disp('kHz',h2,"3rd harmonic = ");

h3=12*1;

disp('kHz',h3,"12th harmonic = ");

//(b)

disp("(b) ")

p1=(V2/V1)*100;

disp('%',p1,"%2nd order = ");

p2=(V3/V1)*100;

disp('%',p2,"%3nd order = ");

THD=([sqrt((0.2^2)+(0.1^2)) ]/8)*100;

disp('%',THD," Total harmonic distortion = ");


