//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436.
//Chapter-3 Ex3.5 Pg No. 104
//Title: Rate Equation to fit Initial Rate data
//==========================================================================================================
clear
clc
clf()
//INPUT (Ex3.5.1)
//Initial Rate Data
B_by_A= [5 7 10 20 37];//B/A Mol Ratio
r_0=[75 65 50 33 18];//Rate (mol/hr g)

//CALCULATION (Ex3.5.1)
//Assuming Eley Rideal Mechanism for the benzene alkylation with propylene 
for i=1:5
    C_B(i)= (B_by_A(i)/(1+B_by_A(i)));//In terms of Mol Fraaction
    C_A(i)= (1/(1+B_by_A(i)));
    CA_CB(i)=C_B(i)*C_A(i);
    C_by_r(i)=CA_CB(i)/r_0(i);
end
coefs=regress(C_A,C_by_r);//The equation ((C_B*C_A)/r_0)= 1/(k*K_A) + (C_A/k)
scf(0)
plot(C_A,C_by_r,'*');
xtitle('Test of Eley-Rideal model for benzene alkylation');
xlabel(' CA ,Mol Fraction');
ylabel('CA CB/r_0');
intercept=coefs(1);
slope=coefs(2);
K_A=slope/intercept;
k=1/(slope);
K_A_k=k*K_A;

//OUTPUT (Ex3.5.1)
mprintf('\n OUTPUT Ex3.5.1');
mprintf('\n=================================================')
mprintf('\nThe rate equation for Eley-Ridely Mechanism is:\n    r= %0.0fC_A C_B/(1+%0.2fC_A)',K_A_k,K_A);
//=========================================================================================================

//Title:Conversion as a function of Space velocity
//==========================================================================================================
//INPUT (Ex3.5.2)
x= [0.16 0.31 0.40 0.75];
Exp_Inverse_WHSV=(10^-3)*[4 8.2 17 39];//Weight Hourly Space Velocity
Feed_ratio=10;

//CALCULATION (Ex3.5.2)
//The integrated rate equation in terms of conversion ln(1/(1-X))+0.236X= 60.4/WHSV (Page no. 106)
function [y]=integrated_rate_eqn(x0)
    y=log(1 ./(1-x0))+ 0.236.*x0 - 60.4.*Exp_Inverse_WHSV
endfunction

n=length(x)
x0=0.9*ones(1,n);  // Provide guess value for conversion
[x_predicted]=fsolve(x0,integrated_rate_eqn,1d-15); // Using fsolve to determine conversion from integrated rate expression for each operating WHSV

scf(1)
plot(Exp_Inverse_WHSV,x,'*',Exp_Inverse_WHSV,x_predicted,'--')
xtitle('Integral analysis','Inverse of WHSV','Conversion')
legend('Experimental','Predicted')

//OUTPUT (Ex3.5.2)
//Console Output
mprintf('\n=================================================\n');
mprintf('\n OUTPUT Ex3.5.2');
mprintf('\n Predicted and Experimental Conversion Values')
mprintf('\n=================================================')
mprintf('\n10^3/WHSV\tX_experimental\tX_predicted')
mprintf('\n=================================================')
for i=1:n
    mprintf('\n %0.2f\t\t%0.2f\t\t%0.2f ',Exp_Inverse_WHSV(i)*10^3,x(i),x_predicted(i))
end

//FILE OUTPUT
fid= mopen('.\Chapter3-Ex5-Output.txt','w');
mfprintf(fid,'\n OUTPUT Ex3.5.1');
mprintf('\n=================================================')
mfprintf(fid,'\nThe rate equation for Eley-Ridely Mechanism is:\n    r= %0.0fC_A C_B/(1+%0.2fC_A)',K_A_k,K_A);
mfprintf(fid,'\n=================================================\n')
mfprintf(fid,'\n OUTPUT Ex3.5.2');
mfprintf(fid,'\n Predicted and Experimental Conversion Values')
mfprintf(fid,'\n=================================================')
mfprintf(fid,'\n10^3/WHSV\tX_experimental\tX_predicted')
mfprintf(fid,'\n=================================================')
for i=1:n
  mfprintf(fid,'\n %0.2f\t\t%0.2f\t\t%0.2f ',Exp_Inverse_WHSV(i)*10^3,x(i),x_predicted(i))
end
mclose(fid)

//===========================================END OF PROGRAM=================================
//Disclaimer:Regression method is used to find the slope and intercept in Ex3.5.2 .
// Hence the rate equation differ from the graphically obtained values of slope and intercept in the textbook.

