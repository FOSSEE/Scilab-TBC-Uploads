//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 13


clear;
clc;


//Given:
m1 = 10; //machine rating (ton)
//Since 5 K approach is necessary
T1 = 293+5; //temperature of cooling water (K)
T2 = 261-5; //temperature of cold storage (K)
Ha = 181; //enthalpy of saturated vapour at 256 K (kJ/kg)
Sa = 0.714; //entropy of saturated vapour at 256K (kJ/kg K)
Hc = 62; //enthalpy of saturated liquid at 298 K (kJ/kg)
Sc = 0.231; //entropy of saturated liquid at 298 K (kJ/kg K)
Hb = 206; //enthalpy of superheated vapour (kJ/kg)
Sb = 0.714; //entropy of superheated vapour (kJ/kg)

//To calculate the COP and refrigerant circulation rate
//Referring fig 5.11 (Page no. 143)
//(DA/FA) = (Ha-Hd)/Hv
//(DA/FA) = (Sa-Sd)/Sv
//Hv/Sv = T2

//Combining the three relations, we get
Sd = Sc; //isentropic process
Hd = Ha-(T2*(Sa-Sd));
//Using eq. 5.64 (Page no. 141)
COP = (Ha-Hd)/((Hb-Hc)-(Ha-Hd));
mprintf('COP = %f',COP);

//Using equation 5.63 (Page no. 140)
m = (12660*m1)/(Ha-Hd); //refrigerant circulation rate (kg/h)
mprintf('\n Refrigerant circulation rate is %f kg/h',m);

//end