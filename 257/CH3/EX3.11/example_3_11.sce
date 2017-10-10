// given gain of buffer amplifier is 1
s=%s
I=1;
R=10^6;
C=10^-6
C2=0.5*10^-6;

Vi=1/(C*s)*I + R*I
V1=R * I
disp(V1/Vi,"V1/Vi is ")

V2=I/(C2*s) + I*R
Vo= I*R
disp(Vo/V2,"Vo/V2 is ")

V1=V2   //because gain=1
(s/(s+1))*Vi == (s+2)/s * Vo       //

disp(s^2/((s+2)*(s+1)),"transfer function is")

