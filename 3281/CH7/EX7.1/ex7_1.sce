//Page Number: 369
//Example 7.1
clc;
//Given
f=10D+9; //Hz
C=2.5D-12; //F
Gr=2D-4; //mho
Ge=0.025D-3; //mho
Ploss=18.5D+3; //W
V0=5.5D+3; //V
I0=4.5; //A

w=2*%pi*f;

//(i) Unloaded Q
Qun=(w*C)/Gr;
disp(Qun,'Unloaded quality factor:');

//External Q
Qe=(w*C)/Ge;
disp(Qe,'External quality factor:');

//(ii) Circuit effciency
n=1/(1+(Qe/Qun));
disp('%',n*100,'Circuit effciency:');

//Electronic effciency
ne=1-(Ploss/(V0*I0));
disp('%',ne*100,'Electronic effciency:');

//Answer for Qe is given as 6285.6 but it should be 6283.1 
