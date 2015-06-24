clear;
//clc();

// Example 1.2
// Page: 9
printf("Example-1.2  Page no.-10\n\n");

//***Data***//
T = 20;//[C]
d = 1.038143/1000*10^(6);//[kg/m^(3)]
m_i = 10;//[g] mass of sucrose
M_i = 342.3;//[g/mol] molecular weight of sucrose
// In the previous example i.e. example 1.1 the mass was chosen to be 1.00 kg, so that
m = 1.00;//[kg]
V = m/d*1000;//[L]
// The mass concentration is
// m_1 ( mass concentration of sucrose ) = (mass of sucrose)/(volume of solution)
m_1 = m_i/V;//[g/L]
// The mole concentration is 
// m_2 ( mole concentration of sucrose ) = (moles of sucrose)/(volume of solution)
m_2 = (m_i/M_i)/V;//[mol/L]
printf(" Mass concentration of the solution is %f g/L\n",m_1);
printf(" Mole concentration of the solution is %f mol/L\n",m_2);
// By the definition of the molarity, molarity is mole concentration of the solute
// so molarity 
m = m_2;
printf(" Molarity of the solution is           %f mol/L",m_2);