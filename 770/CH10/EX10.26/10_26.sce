clear;
clc;
funcprot(0);

//Example - 10.26
//Page number - 370
printf("Example - 10.26 and Page number - 370\n\n");

//Given
Vol = 0.15;//[m^(3)]
T_1 = 170;//[K] - Initial emperature
P_1 = 100;//[bar] - Initial pressure
P_1 = P_1*10^(5);//[Pa]
R = 8.314;//[J/mol*K] - Universal gas constant
// For nitrogen
Tc = 126.2;//[K] - Critical tempeature
Pc = 34;//[bar] - Critical pressure
Pc = Pc*10^(5);//[Pa]
w = 0.038;
// Cp_0 = 27.2+4.2*10^(-3)*T

//(1)
// For van der Walls equation of state
a = (27*R^(2)*Tc^(2))/(64*Pc);//[Pa-m^(6)/mol^(2)]
b = (R*Tc)/(8*Pc);//[m^(3)/mol]

// The cubic form of van der Walls equation of state is given by,
// V^(3) - (b + (R*T)/P)*V^(2) + (a/P)*V - (a*b)/P = 0
// On simplification the equation changes to
// V^(3) - 1.799*10^(4)*V^(2) + 1.366*10^(-8)*V - 5.269*10^(-13) = 0

// Solving the cubic equation 
deff('[y]=f(V)','y=V^(3)-1.799*10^(-4)*V^(2) + 1.366*10^(-8)*V - 5.269*10^(-13)');
V1 = fsolve(1,f);
V2 = fsolve(10,f);
V3 = fsolve(100,f);
// The above equation has only 1 real root, other two roots are imagimnary
V_1 = V1;//[m^(3)/mol]
// Thus total number of moles is given by
n_1 = Vol/V_1;//[mol]

// After 500 mol are withdrawn, the final number of moles is given by
n_2 = n_1 - 500;//[mol]
// Thus molar volume at final state is 
V_2 = Vol/n_2;//[m^(3)/mol]

// The ideal entropy change is guven by
// delta_S_ig = integrate('27.2+4.2*10^(-3)*T','T',T_1,T_2) - R*log(P_2/P_1);
// The residual entropy change is given by
// delta_S_R = R*log((P_2*(V_2-b))/(R*T_2)) - R*log((P_1*(V_1-b))/(R*T_1)) 
// delta_S = delta_S_ig = delta_S_R
// delta_S = integrate('27.2+4.2*10^(-3)*T','T',T_1,T_2) + R*log((V_2-b)/(V_1-b));
// During discharging delta_S = 0, thus on simplification we get
// 18.886*log(T_2) + 4.2*10^(-3)*T_2 - 92.937 = 0
// Solving the above equation we get
deff('[y]=f1(T_2)','y=18.886*log(T_2) + 4.2*10^(-3)*T_2 - 92.937');
T_2 = fsolve(1,f1);

// Thus at T_2, 
P_2 = (R*T_2)/(V_2-b) - a/V_2^(2);//[N/m^(2)]
P_2 = P_2*10^(-5);//[bar]

printf(" (1).The final temperature is %f K\n",T_2);
printf("     The final pressure is %f bar\n\n",P_2);

//(2)
// In Peng-Robinson equation of state
m = 0.37464 + 1.54226*w - 0.26992*w^(2);
// At T_1 and P_1, we have
Tr = T_1/Tc;
alpha = (1 + m*(1 - Tr^(1/2)))^(2);
a_2 = ((0.45724*(R*Tc)^(2))/Pc)*alpha;//[Pa*m^(6)/mol^(2)]
b_2 = (0.07780*R*Tc)/Pc;//[m^(3)/mol]

// Cubuc form of Peng-Robinson equation of stste is given by
// V^(3)+(b-(R*T)/P)*V^(2)-((3*b^(2))+((2*R*T*b)/P)-(a/P))*V+b^(3)+((R*T*(b^(2))/P)-((a*b)/P)=0;
// Solving the cubic equation
deff('[y]=f2(V)','y=V^(3)+(b_2-(R*T_1)/P_1)*V^(2)-((3*b_2^(2))+((2*R*T_1*b_2)/P_1)-(a_2/P_1))*V+b_2^(3)+((R*T_1*(b_2^(2)))/P_1)-((a_2*b_2)/P_1)');
V4 = fsolve(-1,f2);
V5 = fsolve(0,f2);
V6 = fsolve(0.006,f2);
//The above equation has only 1 real root,the other two roots are imaginary
V_1_2 = V6;//[m^(3)/mol]

// The number of moles in the initial state is given by
n_1_2 = Vol/V_1_2;//[mol]
// After 500 mol are withdrawn, the final number of moles is given by
n_2_2 = n_1_2 - 500;//[mol]
// Thus molar volume at final state is 
V_2_2 = Vol/n_2_2;//[m^(3)/mol]

// At the final state the relation between pressure and temperature is
// P_2_2 = (R*T_2_2)/(V_2_2-b_2) - a_2/V_2_2^(2)
// P_2_2 = 7.23*10^(4)*T_2 - 3.93*10^(7)*a_2

// Now let us calculate the residual entropy at initial state
Z_1 = (P_1*V_1_2)/(R*T_1);
da_dT_1 = -(a*m)/((alpha*T_1*Tc)^(1/2));//[Pa*m^(6)/mol^(2)] - da/dT

// The residual entropy change for Peng-Robinson equatiob of state is given by
// S_R = R*log(Z-(P*b)/(R*T)) + (da_dT/(2*2^(1/2)*b))*log((V+(1+2^(1/2))*b))/((V+(1-2^(1/2)*b))));
S_R_1 = R*(log(Z_1-(P_1*b_2)/(R*T_1))) + (da_dT_1/(2*2^(1/2)*b_2))*(log((V_1_2+(1+2^(1/2))*b_2)/(V_1_2+(1-2^(1/2))*b_2)));

// The total entropy change is given by
// delta_S = delta_S_ig + delta_S_R
// where, delta_S_ig = integrate('27.2+4.2*10^(-3)*T','T',T_1,T_2_2) - R*log(P_2_2/P_1);
// and, P_2_2 = (R*T_2_2)/(V_2_2-b_2) - a_2/V_2_2^(2)
// On simplification we get
// delta_S = 27.2*log(T_2_2-T_1) + 4.2*10^(-3)*(T_2_2-T_1) - R*log(P_2_2/P_1) + R*log(Z_2-(P_2_2*b)/(R*T_2_2)) + 6226*(da_dT_2) + 9.22

// Now we have the determine the value of T_2_2 such that delta_S = 0
// Starting with a temperature of 150 K
T_prime = 100;//[K]
error = 10;
while(error>0.1)
    Tr_prime = T_prime/Tc;
    alpha_prime = (1 + m*(1 - Tr_prime^(1/2)))^(2);
    a_prime = ((0.45724*(R*Tc)^(2))/Pc)*alpha_prime;
    P_prime = 7.23*10^(4)*T_prime - 3.93*10^(7)*a_prime;
    Z_prime = (P_prime*V_2_2)/(R*T_prime);
    da_dT_prime = -(a_prime*m)/((alpha_prime*T_prime*Tc)^(1/2));
    delta_S = 27.2*log(T_prime/T_1) + 4.2*10^(-3)*(T_prime-T_1) - R*log(P_prime/P_1) + R*log(Z_prime-((P_prime*b_2)/(R*T_prime))) + 6226*(da_dT_prime) + 9.22;
    error=abs(delta_S);
    T_prime = T_prime + 0.3;
end

T_2_2 = T_prime;//[K] - Final temperature
P_2_2 = P_prime*10^(-5);//[bar] - Final pressure

printf(" (2).The final temperature is %f K\n",T_2_2);
printf("     The final pressure is %f bar\n",P_2_2);



