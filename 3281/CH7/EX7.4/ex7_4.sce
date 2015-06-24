//Page Number: 372
//Example 7.4
clc;
//Given
Gr=3D-4; //mho
Ge=3D-5; //mho
Ploss=200D+3; //W
V0=22D+3; //V
I0=28; //A

//(i) Circuit effciency
n=1/(1+(Gr/Ge));
disp('%',n*100,'Circuit effciency:');

//(ii) Electronic effciency
ne=1-(Ploss/(V0*I0));
disp('%',ne*100,'Electronic effciency:');
