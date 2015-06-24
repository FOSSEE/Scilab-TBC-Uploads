clear;
clc;
disp('Example 8.13');

// aim : To determine
// (a) the volume of air taken by the fan
// (b) the percentage composition of dry flue gas

// gien values
C = .82;// mass composition of carbon
H = .08;// mass composition of hydrogen
 O = .03;// mass composition of oxygen
 A = .07;// mass composition of ash
mc = .19;// coal uses, [kg/s] 
 ea = .3;// percentage excess air of oxygen in the air required for combustion
Oa = .23;// percentage of oxygen by mass in the air
  
 // solution
 // (a)
 P = 100;// air pressure, [kN/m^2]
 T = 18+273;// air temperature, [K]
 R = .287;// [kJ/kg K]
 // basis one kg coal
 sO2 = 8/3*C+8*H;// stoichiometric O2 required, [kg]
 aO2 = sO2-.03;// actual O2 required, [kg]
tO2 = aO2/Oa;// theoretical O2 required, [kg]
Aa = tO2*(1+ea);// actual air supplied, [kg]
m = Aa*mc;// Air supplied, [kg/s]

// now using P*V=m*R*T
V = m*R*T/P;// volume of air taken ,[m^3/s]
mprintf('\n (a) Volume of air taken by fan is  =  %f  m^3/s\n',V);

// (b)
mCO2 = 11/3*C;// mass of CO2 produced, [kg]
mO2 = aO2*.3;// mass of O2 produces, [kg]
mN2 = Aa*.77;// mass of N2 produced, [[kg]
mt = mCO2+mO2+mN2;// total mass, [kg]

mprintf('\n (b) Percentage mass composition of CO2 is  =  %f percent \n',mCO2/mt*100);
mprintf('\n     Percentage mass composition of O2 is  =  %f  percent\n',mO2/mt*100)
mprintf('\n     Percentage mass composition of N2 is  =  %f  percent \n',mN2/mt*100)



//  End
