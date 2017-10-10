clear
//
// Variable declaration
// From example 25.2
Q=16.4// Total load in kW
T_in=33// The temperature at liquid R134a enters the expansion valve in °C 
T_out=9// The temperature at liquid  R134a leaves the cooler in °C 
T_e=5//  The temperature at which liquid  R134a evaporates in °C 

// Calculation
h_v=405.23// Enthalpy of R134a,superheated to 9 C in kJ/kg
h_f=246.71// Enthalpy of liquid R134a at 33 C in kJ/kg
Re=h_v-h_f// Refrigerating effect in kJ/kg
m_r=Q/Re// Required refrigerant mass flow in kg/s
printf("\n Required refrigerant mass flow=%0.3f kg/s",m_r)

