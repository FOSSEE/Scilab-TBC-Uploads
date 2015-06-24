//Chemical Engineering Thermodynamics
//Chapter 7
//Ideal Gases

//Example 7.5
clear;
clc;

//Given
P1 = 1;//Initial pressure of air in atm
T1 = 15+273;//Initial temperature in K
P2 = 5;//Final pressure of air in atm
T2 = 15+273;//Final temperature in K
Cv = 5;//specific heat of air at constant volume in Kcal/Kgmole K
Cp = 7;//specific heat of air at constant pressure in Kcal/Kgmole K
R = 0.082;//gas constant in atm-m^3/Kgmole K
R1 = 2;//gas constant in Kcal/Kgmole K
//From the P-V diagram given in page no 155:
//Line 12 represents Isothermal process
//Line b2,c2 & 1a represent Isometric process
//Line a2 & 1c represent Isobaric process
//Line 1b reprsent Adiabatic process

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//To Compute del_H, del_E, Q, W, del_S for the processes given above.
//To indicate the quantities that are state functions 
//To verify that the work required in an isothermal process is less than that in an adiabatic process

//Basis:1 Kgmole of air
V1 = (R*T1)/P1;//Initial volume in cubic meter
V2 = (R*T2)/P2;//Final volume in cubic meter

//(i)Isothermal path 12
//Equations 7.7 to 7.9 will be used (page no 145)
del_E_12 = Cv*(T2-T1);
del_H_12 = Cp*(T2-T1);
W_12 = R1*T1*log(P1/P2);
Q_12 = W_12;
del_S_12 = approx((R1*log(P1/P2)),4);
mprintf('\n(i)For isothermal process or path 12 change in internal energy is %f',del_E_12);
mprintf('\n   For isothermal process or path 12 change in enthalpy is %f',del_H_12);
mprintf('\n   For isothermal process or path 12 heat released is %f Kcal',Q_12);
mprintf('\n   For isothermal process or path 12 work is %f Kcal',W_12);
mprintf('\n   For isothermal process or path 12 change in entropy is %f Kcal/Kgmole K',del_S_12);

//(ii)Path 1a2 = 1a(isometric)+a2(isobaric)
//Equation 7.1 to 7.6 will be used (page no 144 & 145)
Pa = P2;
Ta = (Pa/P1)*T1;//in K
Q_1a = Cv*(Ta-T1);
del_E_1a = Q_1a;
del_H_1a = Cp*(Ta-T1);
W_1a = 0;// Constant volume process
del_E_a2 = Cv*(T2-Ta);
del_H_a2 = Cp*(T2-Ta);
Q_a2 = del_H_a2;
W_a2 = P2*(V2-V1)*((10^4*1.03)/427);
del_H_1a2 = del_H_1a+del_H_a2;
del_E_1a2 = del_E_1a+del_E_a2;
Q_1a2 = Q_1a+Q_a2;
W_1a2 = W_1a+W_a2;
del_S_1a = Cv*log(Ta/T1);
del_S_a2 = Cp*log(T2/Ta);
del_S_1a2 = approx((del_S_1a+del_S_a2),4);
mprintf('\n\n(ii)For path 1a2 change in internal energy is %f',del_E_1a2);
mprintf('\n   For path 1a2 change in enthalpy is %f',del_H_1a2);
mprintf('\n   For path 1a2 heat released is %f Kcal',Q_1a2);
mprintf('\n   For path 1a2 work is %f Kcal',W_1a2);
mprintf('\n   For path 1a2 change in entropy is %f Kcal/Kgmole K',del_S_1a2);

//(iii)Path 1b2 = 1b(adiabatic)+b2(isometric)
//From equation 7.11 (page no 146)
y = Cp/Cv;
Tb = T1*((V1/V2))^(y-1);
//From equation 7.1 to 7.3,7.10 & 7.21,(page no 144,146,147)
Q_1b = 0;//adiabatic process
del_E_1b = Cv*(Tb-T1);
del_H_1b = Cp*(Tb-T1);
W_1b = -del_E_1b;
Q_b2 = Cv*(T1-Tb);
del_H_b2 = Cp*(T1-Tb);
W_b2 = 0;//constant volume prcess
del_E_b2 = Cv*(T2-Tb);
del_H_1b2 = del_H_1b+del_H_b2;
del_E_1b2 = del_E_1b+del_E_b2;
W_1b2 = W_1b+W_b2;
Q_1b2 = Q_1b+Q_b2;
del_S_1b2 = approx((Cv*log(T1/Tb)),4);
mprintf('\n\n(iii)For path 1b2 change in internal energy is %f',del_E_1b2);
mprintf('\n   For path 1b2 change in enthalpy is %f',del_H_1b2);
mprintf('\n   For path 1b2 heat released is %f Kcal',Q_1b2);
mprintf('\n   For path 1b2 work is %f Kcal',W_1b2);
mprintf('\n   For path 1b2 change in entropy is %f Kcal/Kgmole K',del_S_1b2);

//(iv)Path 1c2 = 1c(isobaric)+c2(isometric);
Pc = P1;
Vc = V2;
Tc = (Pc/P2)*T2;
del_E_1c = Cv*(Tc-T1);
Q_1c = Cp*(Tc-T1);
del_H_1c = Q_1c;
W_1c = P1*(Vc-V1)*((10^4*1.03)/427);
del_E_c2 = Cv*(T2-Tc);
Q_c2 = del_E_c2;
del_H_c2 = Cp*(T2-Tc);
W_c2 = 0;//constant volume process
del_E_1c2 = del_E_1c+del_E_c2;
del_H_1c2 = del_H_1c+del_H_c2;
Q_1c2 = Q_1c+Q_c2;
W_1c2 = W_1c+W_c2;
del_S_1c = Cp*log(Tc/T1);
del_S_c2 = Cv*log(T2/Tc);
del_S_1c2 = approx((del_S_1c+del_S_c2),4);
mprintf('\n\n(iv)For path 1c2 change in internal energy is %f',del_E_1c2);
mprintf('\n   For path 1c2 change in enthalpy is %f',del_H_1c2);
mprintf('\n   For path 1c2 heat released is %f Kcal',Q_1c2);
mprintf('\n   For path 1c2 work is %f Kcal',W_1c2);
mprintf('\n   For path 1c2 change in entropy is %f Kcal/Kgmole K',del_S_1c2);

//Determination of state & path functions
if((del_E_12 == del_E_1a2)&(del_E_12 == del_E_1b2)&(del_E_12 == del_E_1c2))
    mprintf('\n\n del_E is a state function');
else
    mprintf('\n\n del_E is a path function');
end
if((del_H_12 == del_H_1a2)&(del_H_12 == del_H_1b2)&(del_H_12 == del_H_1c2))
    mprintf('\n\n del_H is a state function');
else
    mprintf('\n\n del_H is a path function');
end
if(del_S_12 == del_S_1a2)&(del_S_12 == del_S_1b2)&(del_S_12 == del_S_1c2)
    mprintf('\n\n del_S is a state function');
else
    mprintf('\n\n del_S is a path function');
end
if((Q_12 == Q_1a2)&(Q_12 == Q_1b2)&(Q_12 == Q_1c2))
    mprintf('\n\n Q is a state function');
else
    mprintf('\n\n Q is a path function');
end
if((W_12 == W_1a2)&(W_12 == W_1b2)&(W_12 == W_1c2))
    mprintf('\n\n W is a state function');
else
    mprintf('\n\n W is a path function');
end

//Comparison of work required by isothermal & adiabatic process
if(-(W_12)<-(W_1b2))
    mprintf('\n\n  Work required by isothermal process is less than the work required by an adiabatic process');
else
    mprintf('\n\n Statement is incorrect');
end
//end
