clear;
clc;
disp('Example 5.26');

//  aim : To determine
//  the volume of the pressure vessel and the volume of the gas before transfer

//  Given values

P1 = 1400;//  initial pressure,[kN/m^2]
T1 = 273+85;//  initial temperature,[K]

P2 = 700;//  final pressure,[kN/m^2]
T2 = 273+60;//  final temperature,[K]

m = 2.7;// mass of the gas passes,[kg]
cp = .88;//  [kJ/kg]
cv = .67;//  [kJ/kg]

//  solution

//  steady flow equation is, u1+P1*V1+C1^2/2+Q=u2+P2*V2+C2^2/2+W  [1], 
//  given, there is no kinetic energy change and neglecting potential energy term
W = 0;// no external work done
//  so final equation is,u1+P1*v1+Q=u2   [2]
// also u2-u1=cv*(T2-T1)
// hence Q=cv*(T2-T1)-P1*v1    [3]
//  and for unit mass P1*v1=R*T1=(cp-cv)*T1  [4]
//  so finally
Q = cv*(T2-T1)-(cp-cv)*T1;//  [kJ/kg]
//  so total heat transferred is
Q = m*Q;//  [kJ] 

//  using eqn [4]
v1 = (cp-cv)*T1/P1;//  [m^3/kg]
//  Total volume is
V1 = m*v1;//  [m^3]

//  using ideal gas equation P1*V1/T1=P2*V2/T2
V2 = P1*T2*V1/(P2*T1);//  final volume,[m^3]

mprintf('\n The volume of gas before transfer is  =  %f  m^3\n',V1);
mprintf('\n The volume of pressure vessel is  =  %f  m^3\n',V2);
 
//  End
