
//data
f2=9      //MHz
f1=11        //MHz
R=50          //ohm
W1=2*%pi*11*10^6      //rad/s
W2=2*%pi*9*10^6         //rad/s
//formula and result
printf("\nresult:-")
Wo=sqrt(W1*W2)
fo=sqrt(f1*f2)
printf("\nWo=sqrt(W1*W2)\nfo=sqrt(f1*f2)=%.6f MHz",fo)
L=R/(W1-W2)
printf("\nQ=Wo*L/R=Wo/(W1-W2)\nL=R/(W1-W2)=%.6e H",L)
C=1/(L*Wo^2)
printf("\nWo=1/sqrt(L*C)\nC=1/(L*Wo^2)=%.6e F",C)