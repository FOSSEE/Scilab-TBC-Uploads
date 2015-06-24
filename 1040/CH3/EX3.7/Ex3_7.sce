//Harriot P,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436
//Chapter-3 Ex3.7 Pg No. 115
//Title:Equilibrium temperature as a function of conversion and Optimum Feed Temperature
//==========================================================================================================
clear
clc
// COMMON INPUT
P_opt=1.5; //(atm) Operating pressure of first converter
x=[0.5 0.6 0.7 0.8 0.9 0.95];// Conversion of SO2
k=[2E-06 5.1E-06 10.3E-06 18E-06 27E-06 37.5E-06 48E-06 59E-06 69E-06 77E-06] ; //Rate Constant (gmol/g cat sec atm)
T=420:20:600;// Temperature (°C)
X=0.68;
T_F=700;//Feed Temperature(K)
C_pi_800=[12.53 18.61 8.06 7.51];
F=100;// (mol) amount of feed
delta_H_700=-23270;//(cal/mol)
percent_SO2_f=11;//(%)Percentage of SO2 in feed


//CALCULATION (Ex3.7.a)
n=length(x);
m=length(k);
for i=1:n
    K_eq(i)=((x(i)/(1-x(i))))*((100-5.5*x(i))/(10-5.5*x(i)))^0.5*(1/P_opt)^0.5;
    T_eq(i)=(11412/(log(K_eq(i))+10.771));
    P_O2(i)=(10*(10-5.5*x(i))*P_opt)/(100-5.5*x(i));
    P_SO3(i)=(11*x(i)*P_opt)/(100-5.5*x(i));
    P_SO2(i)=(11*(1-x(i))*P_opt)/(100-5.5*x(i));
end

for i=1:n
    for j=1:m
        r(j,i)=k(j)*(P_SO2(i)/P_SO3(i))^0.5*(P_O2(i)-(P_SO3(i)/(P_SO2(i)*K_eq(i)))^2)
    end
    r_max(i)=max(r(j,i));
end
clf()
scf(0)
plot(x,T_eq-273,'*');
xtitle('Temperature in Stage 1 of an SO2 converter');
xlabel('x,SO2 Conversion');
ylabel('Temperature,°C' );

//CALCULATION (Ex3.7.b)
n_SO2=F*percent_SO2_f*10^-2*(1-X);
n_SO3=F*percent_SO2_f*10^-2*X;
n_O2=(10-5.5*X);
n_N2=79;
sigma_n_C_pi=n_SO2*C_pi_800(1)+n_SO3*C_pi_800(2)+n_O2*C_pi_800(3)+n_N2*C_pi_800(4);
Temp_change=(F*percent_SO2_f*10^(-2)*X*(-1)*delta_H_700)/sigma_n_C_pi;//Refer equation 3.60 Pg No.110
mprintf('\nHeat Capacity evaluated at 800 K :%0.0f (cal/°C)',sigma_n_C_pi);
mprintf('\nTemperature Change to carry out the reaction at T_F,\nusing the energy to heat the product gas :%0.0f °C",Temp_change);
//From graphical procedure (Figure 3.19 ,Pg No.118) the final temperature is obtained as 410 °C
T_F=410;//(°C) Final temperature
//From Figure 3.19 ,Pg No.118 temperature for corresponding conversion is obtained 
X_stage=[0.1;0.2;0.3;0.4;0.5;0.6]
T_stage=[441;470;500;540;565;580]
m=length(X_stage);
for i=1:m
    K_eq(i)=exp((11412/T_stage(i))-10.771);
end
k=10^-6*[5.25 14.15 27 48 61.5 69];//From Table 3.5 Corresponding to the stage temperature data obtained form Figure 3.19
for i=1:m
    P_SO2(i)=11*(1-X_stage(i))*P_opt/(100-5.5*X_stage(i))
    P_SO3(i)=11*X_stage(i)*P_opt/(100-5.5*X_stage(i))
    P_O2(i)=10*(10-5.5*X_stage(i))*P_opt/(100-5.5*X_stage(i))
    r(i)=k(i)*(P_SO2(i)/P_SO3(i))^0.5*(P_O2(i)-(P_SO3(i)/(P_SO2(i)*K_eq(i)))^2)*10^6;
    inverse_r(i)=(1/r(i));
end
scf(1)
 plot(X_stage,inverse_r,'*');
 xtitle('1/r vs x','X (conversion)','10^-6/r');


//OUTPUT (Ex3.7.a)
mprintf('\n\n OUTPUT Ex3.7.a');
mprintf('\n============================================================================');
mprintf('\n X\tPhi\t\tT_eq\tT_eq\t\tr_max');
mprintf('\n -\t(atm^-0.5)\t(K)\t(°C)\t\t(gmol/g cat sec)');
mprintf('\n============================================================================');
for i=1:n-1
    mprintf('\n %0.2f\t%0.2f\t %0.0f\t%0.0f\t\t%0.6E',x(i),K_eq(i),T_eq(i),T_eq(i)-273,r_max(i));
end
mprintf('\n %0.2f\t%0.2f\t\t%0.0f\t%0.0f\t\t%0.6E',x(n),K_eq(n),T_eq(n),T_eq(n)-273,r_max(n));

//OUTPUT (Ex3.7.b)
mprintf('\n\n\n OUTPUT Ex3.7.b');
mprintf('\n============================================================================');
 mprintf('\n===========================================');
 mprintf('\n 10^-6/r\tX (conversion)');
 mprintf('\n (gmol/g cat,s) \t(-)');
 mprintf('\n===========================================');
 for i=1:m
     mprintf('\n %0.2f\t\t\t%0.2f',inverse_r(i),X_stage(i));
 end
 mprintf('\nFrom graphical procedure (1/r vs x) the optimum temperature obtained is T_opt: 412°C');
 
// FILE OUTPUT
fid= mopen('.\Chapter3-Ex7-Output.txt','w');
mfprintf(fid,'\nHeat Capacity evaluated at 800 K :%0.0f (cal/°C)',sigma_n_C_pi);
mfprintf(fid,'\nTemperature Change to carry out the reaction at T_F,\nusing the energy to heat the product gas :%0.0f °C",Temp_change);
mfprintf(fid,'\n OUTPUT Ex3.7.a');
mfprintf(fid,'\n============================================================================');
mfprintf(fid,'\n X\tPhi\t\tT_eq\tT_eq\t\tr_max');
mfprintf(fid,'\n -\t(atm^-0.5)\t(K)\t(°C)\t\t(gmol/g cat sec)');
mfprintf(fid,'\n============================================================================');
for i=1:n-1
    mfprintf(fid,'\n %0.2f\t%0.2f\t %0.0f\t%0.0f\t\t%0.6E',x(i),K_eq(i),T_eq(i),T_eq(i)-273,r_max(i));
end
mfprintf(fid,'\n %0.2f\t%0.2f\t\t%0.0f\t%0.0f\t\t%0.6E',x(n),K_eq(n),T_eq(n),T_eq(n)-273,r_max(n));
mfprintf(fid,'\n\n\n OUTPUT Ex3.7.b');
mfprintf(fid,'\n============================================================================');
 mfprintf(fid,'\n===========================================');
 mfprintf(fid,'\n 10^-6/r\tX (conversion)');
 mfprintf(fid,'\n (gmol/g cat,s) \t(-)');
 mfprintf(fid,'\n===========================================');
 for i=1:m
     mfprintf(fid,'\n %0.2f\t\t\t%0.2f',inverse_r(i),X_stage(i));
 end
 mfprintf(fid,'\nFrom graphical procedure (1/r vs x) the optimum temperature obtained is T_opt: 412°C');
 mclose(fid);

//==========================================================END OF PROGRAM======================================
//Disclaimer: The optimum temperature for each conversion is found by trial at maximum rate and the kinetic data in the textbook is not sufficient to calculate the optimum temperature in the code.

