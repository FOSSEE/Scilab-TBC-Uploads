//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.16
clear;
clc;

//Given
//B = -(1.203*10^10)*(T^2.7); second virial coefficient, T is in K
//log P = 6.95464-(1344.8/(219.482+t))...(a);Vapour pressure of toulene
t = 107.2;//Temperature in deg cel
T = t+273.16;//in K
H_ex = 7964;//experimental value of heat of vapourisation in Kcal/Kgmole
d = 800;//density of liquid toulene in Kg/cubic meter
R = 1.98;//gas constant in Kcal/Kgmole K
M = 92.14;//molecular weight of toulene

//To Calculate the heat of vapourization of toulene by using ideal gas law, second virial coefficient but neglecting vl and including vl
//From equation (a), let K = dlogP/dT
K = 1344.8/(219.482+t)^2;
//(i)Using ideal gas behaviour
//From equation 13.112(page no 286)
H_c = (2.303*R*(T^2))*K;
mprintf('(i)The heat of vapourization  using ideal gas behaviour is %f Kcal/Kgmole',H_c);
D = ((H_c-H_ex)/H_c)*100;
mprintf('\n    The deviation is %f percent',D);

//(ii)Using second virial coeff but neglecting vl
//From equation(a)
P = 10^(6.95464-1344.8/(219.482+t));//in mm Hg
P1 = P*1.033*10^4/760;//in Kgf/sq m
B = -((1.203*10^10)/(T^2.7))*10^-3;//in cubic meter/Kgmole
//From equation 13.111 (page no 286) neglecting vl,
l = (R*T)+((B*P1)/427);//in Kcal/Kgmole
H_c = K*2.303*T*l;
mprintf('\n\n(ii)The heat of vapourisation using second virial coefficient but neglecting vl is %f Kcal/Kgmole',H_c);
D = ((H_c-H_ex)/H_c)*100;
mprintf('\n    The deviation in this case is %f percent',D);

//(iii)Using second virial coeff including vl
vl = M/d;//Liquid specific volume in cubic meter/Kgmole
n = P1*vl/427;//in Kcal/Kgmole
H_c = K*2.303*T*(l-n);
mprintf('\n\n(iii)The heat of vapourisation using second virial coefficient including vl is %f Kcal/Kgmole',H_c);
D = ((H_c-H_ex)/H_c)*100;
mprintf('\n     The deviation in this case is %f',D);
//end