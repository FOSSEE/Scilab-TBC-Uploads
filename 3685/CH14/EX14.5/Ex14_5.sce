clc
P2 = 1554.3 // Pressure at state 2 in kPa
P1 = 119.5// Pressure at state 1 in kPa
Pi = sqrt(P1*P2)
h1 = 1404.6 // Enthalpy at state1 in kJ/kg
h2 = 1574.3 // Enthalpy at state2 in kJ/kg
h3 = 1443.5 // Enthalpy at state3 in kJ/kg
h4 = 1628.1// Enthalpy at state4 in kJ/kg
h5 = 371.7 // Enthalpy at state5 in kJ/kg
h6 = h5 // Isenthalpic process
h7 = 181.5// Enthalpy at state7 in kJ/kg
w = 30 // capacity of plant in tonnes of refrigeration
m2_dot = (3.89*w)/(h1-h7) // mass flow rate in upper cycle
m1_dot = m2_dot*((h2-h7)/(h3-h6))// mass flow rate in lower cycle
Wc_dot = m2_dot*(h2-h1)+m1_dot*(h4-h3) // Compressor work
COP = w*3.89/Wc_dot // Coefficient of performance of cycle
// single stage
h1_ = 1404.6 //Enthalpy at state1 in kJ/kg 
h2_ = 1805.1 // Enthalpy at state2 in kJ/kg 
h3_ = 371.1 // Enthalpy at state3 in kJ/kg 
h4_ = h3_ // Isenthalpic process
m_dot = (3.89*30)/(h1_-h4_) // mass flow rate in cycle
Wc = m_dot*(h2_-h1_) // Compressor work
COP_ = w*3.89/Wc // Coefficient of performance of cycle
IW = (Wc-Wc_dot)/Wc_dot // Increase in compressor work
ICOP = (COP-COP_)/COP_ // Increase in COP for 2 stage compression
printf("\n Example 14.5\n")
printf("\n Increase in work of compression for single stage  is %f percent",IW*100)
printf("\n Increase in COP for 2 stage compression is %f percent",ICOP*100)
//The answers vary due to round off error

