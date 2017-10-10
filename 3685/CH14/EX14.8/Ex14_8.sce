clc
// Given that
tf = 5 // Temperature of flash chamber in degree celsius
x = 0.98 // Quality of water vapour living the evaporator
t2 = 14 // Returning temperature of chilled water in degree celsius
t0 = 30 // Make up water temperature in degree celsius
m = 12 // Mass flow rate of chilled water in kg/s
nc = 0.8 // Compressor efficiecy 
pc = 0.1 // Condenser pressure in bar
printf("\n Example 14.8\n")
//From the steam table
hf = 58.62 // In kJ/kg at 14 degree celsius
hf_ = 20.93 // In kJ/kg at 5 degree celsius
hf__ = 125.73 // In kJ/kg at 30 degree celsius
hv = x*2510.7
Rc = m*(hf-hf_)/3.5
m_v = Rc*3.5/(hv-hf__)
// At 0.10 bar
hg = 2800 // In kJ/kg 
Win = m_v*(hg-hv)/nc
COP = Rc*3.5/Win
printf("\nCOP of the system is %f",COP)


