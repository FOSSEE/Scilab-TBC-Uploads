//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc.,USA,pp 436. 
//Chapter-1 Ex1.5 Pg No. 29
//Title: Methods to determine km and vm
//========================================================================================
clear
clc
clf
//INPUT
S=[2;5;10;15]*10^(-3);//Concentration of substrate [HCO3]
r_reciprocal=[95;45;29;25]*10^(3);//Reciprocal rates (L-sec/mol)

//CALCULATION
//Plot 1 refer equation 1.24 Pg No.29
x1=(S).^(-1);
y1=r_reciprocal;
scf(0)
plot(x1,y1*10^(-3),'RED');
xlabel("1/[S]");
ylabel("(1/r)*10^-3");
xtitle("1/r versus 1/S");
p=length(x1);
X_1=[x1 ones(p,1)];
R1=X_1\y1;
slope(1)=R1(1,1);
intercept(1)=R1(2,1);
v_m(1)=(1/(intercept(1)));//Maximum Reaction Rate(mol/L-sec)
k_m(1)=slope(1)*v_m(1);//Michaelis-Menton constant

//Plot 2 refer equation 1.25 Pg No.29
x2=S;
y2=S.*r_reciprocal;
scf(1)
plot(x2*10^(3),y2);
xlabel("(S)*10^3");
ylabel("(S)/r");
xtitle("(S)/r versus (S)");
q=length(x2);
X_2=[x2 ones(q,1)];
R2=X_2\y2;
slope(2)=R2(1,1);
intercept(2)=R2(2,1);
v_m(2)=1/(slope(2));//Maximum Reaction Rate (mol/L-sec)
k_m(2)=intercept(2)/(slope(2));//Michaelis-Menton constant


//OUTPUT
mprintf('\n======================================================================================');
mprintf('\n    \t\tMethod_1\tMethod_2');
mprintf('\n======================================================================================');
i=1
    mprintf('\n  Slope    \t%f\t%f',slope(i),slope(i+1));
    mprintf('\n  Intercept  \t%f\t%f',intercept(i),intercept(i+1));
    mprintf('\n  Km (M)      \t%f\t%f',k_m(i),k_m(i+1));
    mprintf('\n  Vm(mol/L-sec) %f\t%f',v_m(i),v_m(i+1));

//FILE OUTPUT
fid= mopen('.\Chapter1-Ex5-Output.txt','w');
mfprintf(fid,'\n======================================================================================');
mfprintf(fid,'\n    \t\tMethod_1\tMethod_2');
mfprintf(fid,'\n======================================================================================');
i=1
    mfprintf(fid,'\n  Slope    \t%f\t%f',slope(i),slope(i+1));
    mfprintf(fid,'\n  Intercept  \t%f\t%f',intercept(i),intercept(i+1));
    mfprintf(fid,'\n  Km (M)      \t%f\t%f',k_m(i),k_m(i+1));
    mfprintf(fid,'\n  Vm(mol/L-sec) %f\t%f',v_m(i),v_m(i+1));
mclose(fid);

//========================================================================END OF PROGRAM=================================
//Disclaimer: Least Square method is used to find the slope and intercept in this example.
// Hence the values differ from the graphically obtained values of slope and intercept in the textbook.
 

