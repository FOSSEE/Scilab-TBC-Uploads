//Page Number: 372
//Example 7.5
clc;
//Given
f=9D+9; //Hz
C=2.5D-12; //F
Gr=2D-4; //mho
Ge=2.5D-5; //mho
Ploss=18.5D+3; //W
V0=5.5D+3; //V
I0=4.5; //A

//(i) Angular resonant frequency
w=2*%pi*f;
disp('rad/s',w,'Angular resonant frequency:');

//(ii) Unloaded Q
Qun=round((w*C)/Gr);
disp(Qun,'Unloaded quality factor:');

//(iii) Loaded Q
Ql=round((w*C)/(Gr+Ge));
disp(Ql,'Loaded quality factor:');

//(iv) External Q
Qe=(w*C)/Ge;
disp(Qe,'External quality factor:');

//(v) Circuit effciency
n=1/(1+(Qe/Qun));
disp('%',n*100,'Circuit effciency:');

//(vi) Electronic effciency
ne=1-(Ploss/(V0*I0));
disp('%',ne*100,'Electronic effciency:');

//Answer for external Q is given as 56.57 but it should be 5654.8
