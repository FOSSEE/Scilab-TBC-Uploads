//Exa 4.18
clc;
clear;
close;
format('v',7);

//Given Data :
P1=480;//kPa
T1=190+273;//K
T3=190+273;//K
P2=94;//kPa
P3=150;//kPa
T2=T3*P2/P3;//K
R=0.29;//KJ/KgK
m=1;//Kg
Cp=1.011;//KJ/KgK
//T2/T1=(P2/P1)^((Gamma-1)/Gamma)
//((Gamma-1)/Gamma)=log(T2/T1)/log(P2/P1);//
Gamma=1.402;//by trial method
disp(Gamma,"Index of adiabatic expansion :");
Cv=R/(Gamma-1);//KJ/KgK
W1_2=m*R*(T1-T2)/(Gamma-1);//KJ/Kg
disp(W1_2,"Work done, W1-2 per Kg of air in KJ/Kg : ");
W2_3=0;//Constant volume process
disp(W2_3,"Work done, W2-3 per Kg of air in KJ/Kg : ");
W3_1=m*R*T2*log(P3/P1);//KJ/Kg
disp(W3_1,"Work done, W1-2 per Kg of air in KJ/Kg : ");
W=W1_2+W2_3+W3_1;//KJ/Kg
disp(W,"Total Work done in KJ/Kg : ");
S2subS1=0;//adiabatic process
S3subS2=m*R*log(P2/P3)+m*Cp*log(T3/T2);//KJ/KgK
disp(S3subS2,"Change in specific entropy, S1-2 in KJ/KgK ;  ");
S1subS3=-S2subS1-S3subS2;//KJ/KgK
disp(S1subS3,"Change in specific entropy, S3-1 in KJ/KgK ;  ");
