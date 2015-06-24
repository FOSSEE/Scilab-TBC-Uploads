//ex15.4
f_c=2860;
R=1.8*10^3;
C=1/(2*%pi*f_c*R);
R2=R;
R1=0.152*R2;    //BUTTERWORTH RESPONSE IN FIRST STAGE
R4=R;
R3=1.235*R4;    //BUTTERWORTH RESPONSE IN SECOND STAGE
disp(C,'capacitance in farads');
disp(R1,'R1 in ohms for butterworth response in first stage')
disp(R3,'R3 in ohms for butterworth response in second stage')
