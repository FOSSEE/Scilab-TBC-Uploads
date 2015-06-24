
clc; funcprot(0);
// Initialization of Variable
f=0.150 //focal length in m
h1=1500.0;//elevation A in m
h2=1200.0;//elevation B in m
h3=1000.0;//elevation C in m
H=3000.0;//height in m
//calculstion
hav=1.0/3*(h1+h2+h3);
S1=f/(H-h1);
disp(1/S1,"scale of point 1 in 1 in");
S2=f/(H-h2);
disp(1/S2,"scale of point 2 in 1 in");
S3=f/(H-h3);
disp(round(1/S3),"scale of point 3 in 1 in");
Sav=f/(H-hav);
disp(round(1/Sav),"average scale  in 1 in");
clear()
