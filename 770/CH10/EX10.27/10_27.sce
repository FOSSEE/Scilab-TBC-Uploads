clear;
clc;
funcprot(0);

//Example - 10.27
//Page number - 374
printf("Example - 10.27 and Page number - 374\n\n");

//Given
T = 373.15;//[K]
Tc = 562.16;//[K]
Pc = 48.98;//[bar]
Pc = Pc*10^(5);//[Pa]
R = 8.314;//[J/mol-K] - Universal gas constant

// The cubic form of Redlich Kwong equation of state is given by,
// V^(3) - ((R*T)/P)*V^(2) - ((b_1^(2)) + ((b_1*R*T)/P) - (a/(T^(1/2)*P))*V - (a*b)/(T^(1/2)*P) = 0

a = (0.42748*(R^(2))*(Tc^(2.5)))/Pc;//[Pa*m^(6)*K^(1/2)/mol]
b = (0.08664*R*Tc)/Pc;//[m^(3)/mol]

// At 373.15 K, let us assume the pressure to be 2.5 bar and under these conditions 
P_1 = 2.5;//[bar]
P_1 = P_1*10^(5);//[bar]

// Putting the values in Redlich Kwong equation of state, the equation becomes
// V^(3) - 0.0124*V^(2) + 8.326*10^(-6)*V - 7.74*10^(-10) = 0
// Solving the cubic equation

deff('[y]=f(V)','y=V^(3) - 0.0124*V^(2) + 8.326*10^(-6)*V - 7.74*10^(-10)');
V1=fsolve(-9,f);
V2=fsolve(10,f);
V3=fsolve(0.1,f);
// The largest root and the smallest root is considered for liquid phase and vapour phase respectively.
V_liq = V1;//[m^(3)/mol] - Molar volume in liquid phase
V_vap = V3;//[m^(3)/mol] - Molar volume in vapour phase

// Let us calculate the fugacity of vapour phase
// log(f_vap/P) = b/(V-b) + log((R*T)/(P*(V-b))) - (a/(R*T^(1.5)))*(1/(V+b) - (1/b)*log(V/(V+b)))
f_vap = P_1*exp(b/(V_vap-b) + log((R*T)/(P_1*(V_vap-b))) - (a/(R*T^(1.5)))*(1/(V_vap+b) - (1/b)*log(V_vap/(V_vap+b))));//[Pa]

// Let us calculate the fugacity of the liquid phase
f_liq = P_1*exp(b/(V_liq-b) + log((R*T)/(P_1*(V_liq-b))) - (a/(R*T^(1.5)))*(1/(V_liq+b) - (1/b)*log(V_liq/(V_liq+b))));


// The two fugacities are not same; therefore another pressure is to be assumed. The new pressure is
P_new = P_1*(f_liq/f_vap);//[Pa]

// At P_new
deff('[y]=f1(V)','y=V^(3) - ((R*T)/P_new)*V^(2) - (b^(2) + ((b*R*T)/P_new) - a/(T^(1/2)*P_new))*V - (a*b)/(T^(1/2)*P_new)');
V4=fsolve(-9,f1);
V5=fsolve(10,f1);
V6=fsolve(0.1,f1);
// The largest root and the smallest root is considered for liquid phase and vapour phase respectively.
V_liq_2 = V4;//[m^(3)/mol] - Molar volume in liquid phase
V_vap_2 = V6;//[m^(3)/mol] - Molar volume in vapour phase

f_vap_prime = P_new*exp(b/(V_vap_2-b) + log((R*T)/(P_new*(V_vap_2-b))) - (a/(R*T^(1.5)))*(1/(V_vap_2+b) - (1/b)*log(V_vap_2/(V_vap_2+b))));//[Pa]
f_liq_prime = P_new*exp(b/(V_liq_2-b) + log((R*T)/(P_new*(V_liq_2-b))) - (a/(R*T^(1.5)))*(1/(V_liq_2+b) - (1/b)*log(V_liq_2/(V_liq_2+b))));

// Since the fugacities of liquid and vapour phasesare almost same the assumed pressure may be taken as vapour pressure at 373.15 K
P_new = P_new*10^(-5);//[bar]

printf(" The vapour pressure of benzene using Redlich Kwong equation of state is %f bar\n",P_new);


