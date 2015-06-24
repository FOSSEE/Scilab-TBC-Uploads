//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-3 Ex3.3 Pg No. 97
//Title:Effect of temperature on yield
//================================================================================================================
clear
clc
//INPUT
C_A0=1;//Initial concentration of A
C_B0=5;//Initial concentration of B
E1=15;//Activation energy for first reaction(kcal)
E2=20;//Activation energy for second reaction(kcal)
X_A=0.88;// Total conversion of reactant A
Y=0.81;//Yield for the reaction to produce C
R=1.987;//Gas Constant(cal/K^-1 mol^-1)
T_0=350;//Temperature (K)

//CALCULATION
//Assuming first order by taking concentration of B constant since B is in Excess
C_A= C_A0*(1-X_A);//Unreacted amount of A
C_B=C_B0-Y;//Unreacted amount of B
k1_plus_k2_t=(X_A/(1-X_A));
S=Y/X_A;//At 350K
k1_by_k2=11.57;
k1_plus_k2_by_k2=k1_by_k2+1;//Refer Ex3.3 for the coded equations
k2_t=k1_plus_k2_t/k1_plus_k2_by_k2;
k1_t=k1_plus_k2_t-k2_t;
T=345;
for i=1:7 
T=T+5;
Temp(i)=T;
k1_dash_t(i)=k1_t*exp(((E1*1000/R)*((1/T_0)-(1/T))));//Arrhenius law
k2_dash_t(i)=k2_t*exp(((E2*1000/R)*((1/T_0)-(1/T))));//Arrhenius law
k1_plus_k2_t_new(i)=k1_dash_t(i)+k2_dash_t(i);
X_A_new(i)=k1_plus_k2_t_new(i)/(1+k1_plus_k2_t_new(i));
S_new(i)=((k1_dash_t(i)/k2_dash_t(i))/(1+(k1_dash_t(i)/k2_dash_t(i))));
Y_new(i)=S_new(i)*X_A_new(i);
end

//OUTPUT
mprintf('=======================================');
mprintf('\n\t T \t  X_A \t  S \t  Y');
mprintf('\n\t K \t (-) \t  (-) \t (-)');
mprintf('\n======================================');
for i=1:7
    mprintf('\n\t %d \t %0.3f \t %0.3f \t %0.3f',Temp(i),X_A_new(i),S_new(i),Y_new(i));
end
  maximum=max(Y_new);
  mprintf('\n\t\nThe maximum value of yield is %f ',maximum);
  mprintf('\n\t\nHigh yield is obtained between 365K to 375K');

//FILE OUTPUT
fid=mopen('.\Chapter3-Ex3-Output.txt','w');
mfprintf(fid,'=======================================');
mfprintf(fid,'\n\t T \t  X_A \t  S \t  Y');
mfprintf(fid,'\n\t K \t (-) \t  (-) \t (-)');
mfprintf(fid,'\n======================================');
for i=1:7
    mfprintf(fid,'\n\t %d \t %0.3f \t %0.3f \t %0.3f',Temp(i),X_A_new(i),S_new(i),Y_new(i));
end
  maximum=max(Y_new);
  mfprintf(fid,'\n\t\nThe maximum value of yield is %f ',maximum);
  mfprintf(fid,'\n\t\nHigh yield is obtained between 365K to 375K');
  mclose(fid);
//======================================================END OF PROGRAM===================================================
//Disclaimer:Refer Ex3.3 in the textbook The Arrhenius law equation has a typo error. Exponential term missing in the textbook 

