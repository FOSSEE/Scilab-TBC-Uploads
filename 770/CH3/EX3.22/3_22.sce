clear;
clc;

//Example - 3.22
//Page number - 122
printf("Example - 3.22 and Page number - 122\n\n");

//Given
V_total = 5;//[L] - Volume of pressure cooker.
V_total = V_total*10^(-3);//m^(3)
P_gauze = 15;//[psi] - Operating pressure (gauze)of pressure cooker.
P_gauze = (P_gauze/14.5)*10^(5);//[N/m^(2)]
P_atm = 0.966*10^(5);//[N/m^(2)] - Atmospheric pressure.
m_1 = 1;//[kg] - Initial mass.
t = 30*60;//[s] - Total time.
J = 500;//[W] - Rate of heat supply

P_abs = P_gauze + P_atm;//[N/m^(2)] - Absolute pressure.
//The energy balance equqtion gives,
// Q = m_e*H_e +(m_2*U_2 - m_1*U_1), where 'm_e' is the mass exit  from the system and 'H_e' is enthalpy at exit conditions.

//It has been reported in the book that from steam table at P_abs,
T_sat = 120.23;//[K]- Saturated temperature
V_liq = 0.001061;//[m^(3)/kg] - specific volume of liquid.
V_vap = 0.8857;//[m^(3)/kg] - specific volume of vapour.
U_liq = 504.49;//[kJ/kg] - specific internal energy of liquid.
U_vap = 2529.5;//[kJ/kg] - specific internal energy of vapour.
H_liq = 504.70;//[kJ/kg] - specific enthalpy of liquid.
H_vap = 2706.7;//[kJ/kg] - specific internal energy of vapour.

//We know that total volume occupied by 1 kg of fluid is 
//V_total = (1-x)*V_liq + x*V_vap
x1 = (V_liq - V_total)/(V_liq - V_vap);//[g]

//Internal energy at this state is
U_1 = (1-x1)*U_liq + x1*U_vap;//[kJ/kg] - specific internal energy
U_1_net = m_1*U_1;//[kJ] - Internal energy

//The amount of heat suplied is given by,
J_net = J*t;//[J] - Net heat supplied.
J_net = J_net*10^(-3);//[kJ]

//Let the dryness factor at the end of the process be x
//The specific properties of the liquid and vapour remain same as P and T_sat are the same in the cooker.
//Let the total mass of H2O (liquid + vapour) at the end of the process be 'm' kg.
// V_total/m = (1-x)*(V_liq) + x*V_vap ......equqtion(1)

//the specific internal energy at the end of process is
//U = (1-x)*U_liq + x*U_vap
//The total internal energy at the end of the process is
//U_net = m*U = x*[(1-x)*U_liq + x*U_vap]

//The energy balance equqtion gives,
// Q = m_e*H_e +(m_2*U_2 - m_1*U_1), where 'm_e' is the mass exit  from the system and 'H_e' is enthalpy at exit conditions.
//Since the vapour which exits out have enthalpy equal to that of saturated vapour,we get on simplification
// 900 = (1-m)*(2706.7) + m*((1-x)*504.49 + x*2529.5) - 513.5..........equation(2)
// The second equation on simplification becomes
// x = ((0.005/m) - 0.001061)/0.884639

// Putting the expression of x in first equation and then simplifying, we get
// - 1293.2 = -2202.21*m + 11.445 - 2.429*m
m = (11.445+1293.2)/(2202.21+2.429);//[kg]

// Therefore x can be calculated as
x = ((0.005/m) - 0.001061)/0.884639;

// Therfore total water (liquid + vapour) present in the pressure cooker at the end of the process is m kg.
m_vapour = x*m;//[kg] - Mass of vapour
m_liquid = (1-x)*m;//[kg] - Mass of vapour

printf(" Total water (liquid + vapour) present in the pressure cooker at the end of the process is %f kg\n",m);
printf(" The mass of vapour is %f kg\n",m_vapour);
printf(" The mass of liquid is %f kg\n",m_liquid);

