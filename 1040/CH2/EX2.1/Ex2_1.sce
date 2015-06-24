//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436.
//Chapter-2 Ex2.1 Pg No.52
//Title: Effectiveness factor for solid catalyzed reaction
//======================================================================================================================
clear
clc
clf
//INPUT
// Case: I  constant hydrogen pressure: P_H2= 2110 torr  
P_B=[70 185 286];// Benzene Pressure (torr)
r_1=1E-3 *[4.27 5.4 6.12];//(mol/hr g) observed rates
P_H2_const=2110;//Constant Hydrogen Pressure (torr)


// Case: II  Constant benzene pressure P_B_const=70 torr
P_H2=[1050 2105 2988];// Hydrogen Pressure (torr)
r_2=1E-3 * [3.81 4.27 4.5];//(mol/hr g) observed rates
P_B_const=70;//Constant Benzene Pressure (torr)

//CALCULATION
// Case: I  constant hydrogen pressure: P_H2= 2110 torr 

n=length(P_B)
for i=1:n
    Y_1(i)=(P_B(i)*P_H2_const/r_1(i))^(1/3);
    X_1(i)=P_B(i);
end
coefs_I=regress(X_1',Y_1');
intercept_1=coefs_I(1)
slope_1=coefs_I(2)

// Case: II  Constant benzene pressure P_B_const=70 torr
m=length(P_H2)
for i=1:n
    Y_2(i)=(P_B_const*P_H2(i)/r_2(i))^(1/3);
    X_2(i)=(P_H2(i))^0.5;
end
coefs_II=regress(X_2',Y_2');
intercept_2=coefs_II(1);
slope_2=coefs_II(2);
coef_1=(intercept_1)^0.5;
coef_2=(slope_1*slope_2)^(1/2)*(slope_1/slope_2)*intercept_1;

function y=funct1(K_H2)
    y=coef_2*K_H2^0.5-coef_1*K_H2^(4/3)-1
endfunction

[K_H2_res]=fsolve(0,funct1);

K_B=K_H2_res^(4/3)*(slope_1/slope_2);

k=(0.635)^(-1/3)*K_B^2/K_H2_res;
scf(0)
plot(X_1,Y_1,'-*-')
xtitle('Benzene Hydrogenation(a)Variable benzene pressure')
xlabel("P_B (torr)");
ylabel("(P_H2 P_B/10^3 r)^(1/3)");
legend('T=67.6 °C');

scf(1)
plot(X_2,Y_2,'-*-')
xtitle('Benzene Hydrogenation(b)Variable hydrogen pressure')
xlabel("P_H2 (torr)");
ylabel("(P_H2 P_B/10^3 r)^(1/3)");
legend('T=67.6 °C');

//OUTPUT
mprintf('\n Solving for the three parameters gives');
mprintf('\n K_H2 = %f torr^-1',K_H2_res);
mprintf('\n K_B = %f torr^-1',K_B);
mprintf('\n k = %E ',k);

//FILE OUTPUT
fid= mopen('.\Chapter2-Ex1-Output.txt','w');
mfprintf(fid,'\n Solving for the three parameters gives');
mfprintf(fid,'\n K_H2 = %f torr^-1',K_H2_res);
mfprintf(fid,'\n K_B = %f torr^-1',K_B);
mfprintf(fid,'\n k = %E ',k);
mclose(fid);

//===============================================================================================================================================================
//Disclaimer: Page 53 There is a typo in the equation for Y obtained for Model case I: Constant hydrogen pressure and variable benzene pressure formulation
// From Fig 2.7(a), It is evident that for P_H2 = 2110 torr, three experimental points are considered for linear regression. However, from table 2.1, only two points corresponds to P_H2 = 2110 torr. In comparison with Fig. 2.7(a), the table value corresponding to P_H2 = 2105 is also read as P_H2 = 2110. 
//Therefore the values of the constants are different from that obtained in the textbook. Also regression is used to obtain the values of slopes and intercept whereas the textbook considers graphical method for the computation of the codes
