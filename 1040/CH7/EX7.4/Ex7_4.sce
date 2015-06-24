//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436
//Chapter-7 Ex7.4 Pg No.279
//Title:Local selectivity due to mass transfer limitations
//===========================================================================================================
clear
clc
//INPUT
C_Ai=0.02;//(M)
C_B0=3;//(M)
D_A=10^(-5);//(cm2/sec)
D_B=D_A;//(cm2/sec)
D_C=D_B;//(cm2/sec)
k_1=10^(4);//(L/mol sec)
k_star_l=0.015;//(cm/sec)
n=1;
C_c0=[0 1.4];
X=[0 0.5]// Conversion
Phi=[33 23];//From figure 7.7


//CALCULATION
k_2=0.09*k_1;
for i=1:2
    C_B(i)=(1-X(i))*C_B0;
sqrt_M(i)=sqrt(C_B(i)*k_1*D_A)/k_star_l;
Phi_a(i)=(1+(C_B(i)/(n*C_Ai))*(D_B/D_A));//Refer equation 7.51
C_Bbar_by_C_B(i)=(Phi(i)/sqrt_M(i))^2;//Refer equation 7.59
delta_C_B(i)=(1-C_Bbar_by_C_B(i))*C_B(i);//Refer equation 7.60
delta_C_c(i)=delta_C_B(i);
C_cbar(i)=delta_C_c(i)+C_c0(i);
C_Bbar(i)=C_Bbar_by_C_B(i)*(C_B(i));
S(i)=(1-(k_2*C_cbar(i)/(C_Bbar(i)*k_1)))*100;//Refer equation 7.56
end

//OUTPUT
mprintf('\n\tLocal selectivity due to mass transfer limitations ');
mprintf('\n\tThe local selectivity for Zero Conversion : %0.0f%%',S(1));
mprintf('\n\tThe local selectivity for 50%% Conversion : %0.0f%%',S(2));

//FILE OUTPUT
fid= mopen('.\Chapter7-Ex4-Output.txt','w');
mfprintf(fid,'\n\tLocal selectivity due to mass transfer limitations ');
mfprintf(fid,'\n\tThe local selectivity for Zero Conversion is %0.0f%%',S(1));
mfprintf(fid,'\n\tThe local selectivity for 50%% Conversion is %0.0f%%',S(2));
mclose(fid);
//======================================================END OF PROGRAM===================================================






