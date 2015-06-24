clear;
clc;
disp('Example 8.3');

//  aim : To determine 
//  the stoichiometric mass of air
//  the products of combustion both by mass and as percentage 

//  Given values
C = .82;// mass composition C
H2 = .12;// mass composition of H2
O2 = .02;// mass composition of O2
S = .01;// mass composition of S
N2 = .03;// mass composition of N2

 //  solution
//  for 1kg fuel
mo2 = 8/3*C+8*H2-O2+S*1;// total mass of  O2 required, [kg]
sa = mo2/.232;// stoichimetric  air, [kg]
mprintf('\n The stoichiometric mass of air is  =  %f kg/kg fuel\n',sa);

// for one kg fuel
mCO2 = C*11/3;// mass of CO2 produced, [kg]
mH2O = H2*9;// mass of H2O produced, [kg]
mSO2 = S*2;// mass of SO2 produce, [kg]
mN2 = C*8.84+H2*26.5-O2*.768/.232+S*3.3+N2;// mass of N2 produced, [kg]

mt = mCO2+mH2O+mSO2+mN2;// total mass of product, [kg]

x1 = mCO2/mt*100;// %age mass composition of CO2 produced
x2 = mH2O/mt*100;// %age mass composition of H2O produced
x3 = mSO2/mt*100;// %age mass composition of SO2 produced
x4 = mN2/mt*100;// %age mass composition of N2 produced

mprintf('\n CO2 produced  =  %f  kg/kg fuel,  percentage composition  =  %f,\n H2O produced  =  %f  kg/kg fuel,  percentage composition  =  %f,\n SO2 produced  =  %f  kg/kg fuel,  percentage composition  =  %f,\n N2 produced  =  %f  kg/kg fuel,  percentage composition  =  %f',mCO2,x1,mH2O,x2,mSO2,x3,mN2,x4);

//  End
