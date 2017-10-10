
clc; funcprot(0);
// Initialization of Variable
//angles found by cosine law
//alpha=A and beta=B and those are angles
A1=45.801596;//distance in m
A2=40.605250;//distance in m
A3=50.143258;//distance in m
A4=43.077646;//distance in m
B1=48.779868;//distance in m
B2=44.141587;//distance in m
B3=49.733152;//distance in m
B4=37.737035;//distance in m
//calculation
e1=360-A1-A2-A3-A4-B1-B2-B3-B4;//error
//angle update
A1=A1+e1/8;
A3=A3+e1/8;
B1=B1+e1/8;
B3=B3+e1/8;
A2=A2+e1/8;
B2=B2+e1/8;
A4=A4+e1/8;
B4=B4+e1/8;
E2=(log(sin(A1*%pi/180))*log(sin(A2*%pi/180))*log(sin(A3*%pi/180))*log(sin(A4*%pi/180))-log(sin(B1*%pi/180))*log(sin(B2*%pi/180))*log(sin(B3*%pi/180))*log(sin(B4*%pi/180)))/log(10000);
c3=E2/17.1;
c4=E2/17.0;
A1=A1-c3;
disp(A1,"corrected angle A1 in degrees")
B1=B1+c3;
disp(B1,"corrected angle B1 in degrees")
clear()
