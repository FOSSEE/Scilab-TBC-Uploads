clear;
clc;
funcprot(0);

//Example - 3.6
//Page number - 88
printf("Example - 3.6 and Page number - 88\n\n");


//Given
T = 125+273.15;//[K] - Temperature
P1 = 1;//[bar] - Initial pressure
P1 = P1*10^(5);//[N/m^(2)]
P2 = 60;//[bar] - Final pressure
P2 = P2*10^(5);//[N/m^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant
Tc = 416.3;//[K] - Critical temperature
Pc = 66.80*10^(5);//[N/m^(2)] - Critical pressure

// (1)
// Virial equation of state, Z = 1 + (B/V)+(C/V^(2))
// (P*V)/(R*T) = 1 + (B/V)+(C/V^(2))
// P = (R*T)/V+(B*R*T)/V^(2)+(C*R*T)/V^(3)
// w = integral(PdV)=R*T*log(V2/V1)-(B*R*T)*(1/V2-1/V1)-(C*R*T/2)*(1/V2^(2)-1/V1^(2))

B = -207.5;//[cm^(3)/mol] - Second virial coefficient
B = -207.5*10^(-6);//[m^(3)/mol]
C = 18200;//[cm^(6)/mol^(2)] - Third virial coefficient
C = 18200*10^(-12);//[m^(6)/mol^(2)]

// We need to calculate molar volume at state 1 and 2,
// At state 1,P = P1,
// V^(3)-(R*T/P)*V^(2)-(B*R*T/P)*V-(C*R*T/P)=0
// Solving the cubic equation
deff('[y]=f1(V)','y=V^(3)-(R*T/P1)*V^(2)-(B*R*T/P1)*V-(C*R*T/P1)');
V_1=fsolve(-1,f1);
V_2=fsolve(0,f1);
V_3=fsolve(10,f1);
// The cubic equation has only 1 real root,other two roots are imaginary.
V1 = V_3;

// Similarly at state 2,P=P2
// V^(3) - (R*T/P)*V^(2) - (B*R*T/P)*V - (C*R*T/P) = 0
// Solving the cubic equation
deff('[y]=f2(V)','y=V^(3)-(R*T/P2)*V^(2)-(B*R*T/P2)*V-(C*R*T/P2)');
V_4=fsolve(-1,f2);
V_5=fsolve(0,f2);
V_6=fsolve(1,f2);
V2 = V_6;
// Finally work done is given by,
w1 = R*T*log(V2/V1)-(B*R*T)*(1/V2-1/V1)-(C*R*T/2)*(1/V2^(2)-1/V1^(2));//[J/mol]
w1 = w1*10^(-3);//[kJ/mol]
printf(" (1).The work done using given virial equation of state is %f kJ/mol\n",w1);

// (2)
// Virial equation of state, Z = 1+(B*P)/(R*T)+((C-B^(2))/(R*T)^(2))*P^(2)
// (P*V)/(R*T)= 1+(B*P)/(R*T)+((C-B^(2))/(R*T)^(2))*P^(2)
// V = (R*T)/P+B+((C-B^(2))/(R*T))*P
// Differentiating both sides by P and integrating we get,
// w = integral(PdV)=-(R*T)*log(P2/P1)+((C-B^(2))/(2*R*T))*(P2^(2)-P1^(2))
w2 = -(R*T)*log(P2/P1) + ((C-B^(2))/(2*R*T))*(P2^(2)-P1^(2));//[J/mol]
w2 = w2*10^(-3);//[kJ/mol]
printf(" (2).The work done using given virial equation of state is %f kJ/mol\n",w2);

// (3)
// Van der Walls equation of state is given by,
a = (27*(R^(2))*(Tc^(2)))/(64*Pc);//[Pa*m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]
// P = ((R*T)/(V-b))-a/(V^(2));//[N/m^(2)]
// w = integral(PdV)=R*T*log((V2-b)/(V1-a))+a*(1/V2-1/V1)
// The cubic form of van der Walls equation of state is given by,
// V^(3) - (b+(R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0
// Solving the cubic equation for P=P1
deff('[y]=f3(V)','y=V^(3)-(b+(R*T)/P1)*V^(2)+(a/P1)*V-(a*b)/P1');
V2_1=fsolve(1,f3);
V2_2=fsolve(10,f3);
V2_3=fsolve(100,f3);
// The above equation has 1 real and 2 imaginary roots. We consider only real root (V2_3).

// Similarly at state 2,for P=P2,
deff('[y]=f4(V)','y=V^(3)-(b+(R*T)/P2)*V^(2)+(a/P2)*V-(a*b)/P2');
V2_4=fsolve(1,f4);
V2_5=fsolve(10,f4);
V2_6=fsolve(100,f4);
// The above equation has 1 real and 2 imaginary roots. We consider only real root (V2_6).
// Finally work done is given by
w3 = R*T*log((V2_6-b)/(V2_3-b))+a*(1/V2_6-1/V2_3);//[J/mol]
w3 = w3*10^(-3);//[kJ/mol]
printf(" (3).The work done using  van der Walls equation of state is %f kJ/mol\n",w3);

// (4)
// Redlich Kwong equation of state,
a_1 = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;//[Pa*m^(6)*K^(1/2)/mol]
b_1 = (0.08664*R*Tc)/Pc;//[m^(3)/mol]
// P = ((R*T)/(V-b_1))-(a_1/(T^(1/2)*V*(V+b_1)));//[N/m^(2)]
// Work done is given by
// w = R*T*log((V2-b)/(V1-b))-a/T^(1/2)*integrate('1/V*(V+b)',V',V1,V2)
// Using the factorization 1/(V*(V+b))=(1/b)*((1/V)-(1/V+b)),we get
// w = R*T*log((V2-b)/(V1-b))-(a/(b*T^(1/2)))*(log(V2/V1)-log((V2+b)/(V1+b))
// Now we have calculate V1 and V2,
// The cubic form of Redlich Kwong equation of state is given by,
// V^(3) - ((R*T)/P)*V^(2) - ((b_1^(2)) + ((b_1*R*T)/P) - (a/(T^(1/2)*P))*V - (a*b)/(T^(1/2)*P) = 0
// Solving the cubic equation at state 1,
deff('[y]=f5(V)','y=V^(3)-((R*T)/P1)*V^(2)-((b_1^(2))+((b_1*R*T)/P1)-(a_1/(T^(1/2)*P1)))*V-(a_1*b_1)/(T^(1/2)*P1)');
V3_1=fsolve(1,f5);
V3_2=fsolve(10,f5);
V3_3=fsolve(100,f5);
// The above equation has 1 real and 2 imaginary roots. We consider only real root (V3_3).

// Similarly at state 2,for P = P2,
deff('[y]=f6(V)','y=V^(3)-((R*T)/P2)*V^(2)-((b_1^(2))+((b_1*R*T)/P2)-(a_1/(T^(1/2)*P2)))*V-(a_1*b_1)/(T^(1/2)*P2)');
V3_4=fsolve(1,f6);
V3_5=fsolve(10,f6);
V3_6=fsolve(100,f6);
// The above equation has 1 real and 2 imaginary roots. We consider only real root (V3_6).
// Finally work done is given by
w4 = R*T*log((V3_6-b_1)/(V3_3-b_1))-(a_1/(b_1*T^(1/2)))*(log(V3_6/V3_3)-log((V3_6+b_1)/(V3_3+b_1)));//[J/mol]
w4 = w4*10^(-3);//[kJ/mol]
printf(" (3).The work done using Redlich Kwong equation of state is %f kJ/mol\n",w4);

