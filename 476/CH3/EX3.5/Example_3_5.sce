//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 5


clear;
clc;


//Given:
function[y] = Cv(T);
    y = 27.4528+(6.1839*(10^-3)*T)-(8.9932*(10^-7)*(T^2))-R;
endfunction

m = 20; //mass of air(kg)
n = 1.25; //polytropic constant
P1 = 1; //initial pressure(bar)
P2 = 5; //final pressure(bar)
T1 = 300; //temperature(K)
R = 8.314; //ideal gas constant
M = 29; //molecular wt of air

//To determine work done and amount of heat transferred

//(a): Work done by the compressor per cycle
n_mole = m/M; //moles of air(kmol)
V1 = ((n_mole*10^3*R*T1)/(P1*10^5)); //initial volume(m^3)
V2 = (V1*((P1/P2)^(1/n))); //final volume(m^3)

//Since the process is polytropic P(V^n)=c(say constant)
c = P1*10^5*(V1^n); 
//function[z] = f(V);
//    z = c/(V^1.25);
//endfunction
//W1 = intg(V1,V2,f); so
W = (c/(1-n))*((V2^(-n+1))-(V1^(-n+1)))/1000;
mprintf('Work done by compressor is %4.3e J',W*1000);

//(b): Amount of heat transferred to surrounding
T2 = ((T1*V2*P2)/(V1*P1)); //final temp in K
U1 = intg(T1,T2,Cv);
U = U1*n_mole; //change in internal energy(kJ)
Q = U+W; //heat supplied
mprintf('\nChnage in internal energy is %f kJ',U);
mprintf('\nHeat supplied is %f kJ',Q);

//end