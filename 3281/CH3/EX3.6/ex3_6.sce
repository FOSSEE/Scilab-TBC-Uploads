//Page Number: 143
//Example 3.6
clc;
//Given
S11=0.10;
S12=0.90;
A12=-45;
S21=0.90;
A21=45;
S22=0.3;

//(i) Network is reciprocal
if(A12==A21)
    disp('Network is reciprocal');
else
    
    disp('Network is not reciprocal');
end

//(ii) Network is lossles
x=(S11^2)+(S12^2);
if(x==1)
    disp('Network is lossless');
else
    
    disp('Network is not lossless');
end

//(iii)Return loss
T=S11-((S12*S21)/(1+S22));
Tm=-T; //mod of T
L=-20*log10(Tm);
disp('dB',L,'Return Loss:');
