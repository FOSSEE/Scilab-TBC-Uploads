clear ;
clc;
// Example 11.3
printf('Example 11.3\n\n');
//Page no. 318
// Solution

P = 6205 ;//[lb mol/hr]
//Given
amt_F = 560 ;//[bbl]
// Fuel oil(F) analysis 
C_F = 0.50 ;// [mol fraction]
H2_F = 0.47 ;//[mol fraction]
S_F = 0.03 ;//[mol fraction]
// Natural Gas(G) analysis
CH4_G = 0.96 ;//[mol fraction]
C2H2_G = 0.02 ;//[mol fraction]
CO2_G = 0.02 ;//[mol fraction]
// Analysis of air into Gas furnace(A)
O2_A = 0.21 ;//[mol fraction]
N2_A = 0.79 ;//[mol fraction]
// Analysis of air into Oil furnace(A1)
O2_A1 = 0.20  ;//[mol fraction]
N2_A1 = 0.76  ;//[mol fraction]
CO2_A1 = 0.04  ;//[mol fraction]
//Stack gas(P) analysis
N2_P = .8493  ;//[mol fraction]
O2_P = .0413  ;//[mol fraction]
SO2_P = .0010 ;// [mol fraction]
CO2_P = .1084  ;//[mol fraction]

// Degree of freedom analysis 
n_un = 5;// Number of unknowns in the given problem(excluding extent of reactions)
n_ie  = 5 ;// Number of independent equations
d_o_f =  n_un-n_ie; // Number of degree of freedom
printf('Number of degree of freedom for the given system is  %i .\n',d_o_f);

// Elemental mole balance for 2N,2H,2O,S and C
// Use S balance to get F
F = P* SO2_P/S_F ;// [lb mol/hr]
//Solve other four balances to get G
//2H:  G*(2*CH4_G+C2H2_G)+F*H2_F-W*1
//2N:  A*N2_A+A1*N2_A1 = P*N2_P
//2O:  A*(O2_A)+A1*(O2_A1+CO2_A1)+G*CO2_G-W*(1/2) = P*(O2_P+CO2_P+SO2_P)
//C: G*(CH4_G+2*C2H2_G+CO2_G)+F*C_F+A1*CO2_A1 = P*CO2_P
//Solving above eqns. by matrix method[G W A A1]
a = [2*CH4_G+C2H2_G -1 0 0;0 0 N2_A N2_A1;CO2_G -.5 O2_A O2_A1+CO2_A1;CH4_G+2*C2H2_G+CO2_G 0 0 CO2_A1];// matrix of coefficients
b = [-F*H2_F;P*N2_P;P*(O2_P+CO2_P+SO2_P);(P*CO2_P-F*C_F)];// matrix of constants
x = a\b ;// matrix of solutions x(1) = G,x(2) = W,x(3) = A & x(3) = A1
G = x(1);//[lb mol/hr]
m_F = 7.91 ;// Molecular wt. of fuel oil-[lb]
Fc = (F*m_F)/(7.578*42);// Fuel gas consumed -[bbl/hr]
time = amt_F/Fc ;// Time for which available fuel gas lasts-[hr]
printf('(1) Fuel gas consumed(F) is  %.2f bbl/hr .\n',Fc);
printf('(2) Time for which available fuel gas lasts is  %.0f hr .\n',time);

// For increase in arsenic and mercury level
F_oil = Fc*42; //[gal/hr]
Em_ars2 =  (3.96 *10^(-4))/1000 ;// [lb/gal]
Em_Hg2 =  (5.92 *10^(-4))/1000 ;// [lb/gal]
ars_F = F_oil*Em_ars2 ;// Arsenic produced on burning oil-[lb]
Hg_F = F_oil*Em_Hg2 ;//Mercury produced on burning oil-[lb]
G_gas = G*359 ;//[ft^3/hr]
Em_ars1 =  (2.30 *10^(-4))/10^6 ;// [lb/ft^3]
Em_Hg1 =  (1.34 *10^(-4))/10^6 ;// [lb/ft^3]
ars_G = G_gas*Em_ars1; // Arsenic produced on burning Natural gas-[lb]
Hg_G = G_gas*Em_Hg1 ;//Mercury produced on burning Natural Gas-[lb]
in_ars = ((ars_F-ars_G)/ars_G)*100   ;//[% increase in Arsenic emission]
in_Hg = ((Hg_F-Hg_G)/Hg_G)*100  ; //[% increase in Mercury emission]
printf('(3) Increase in Arsenic emission is  %.1f %% .\n',in_ars);
printf('(4) Increase in Mercury emission is  %.1f %% .\n',in_Hg);