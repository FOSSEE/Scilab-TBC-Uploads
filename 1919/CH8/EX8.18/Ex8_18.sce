
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 18

clear ;clc;

//Given data
T1 = -20              // freezer temperature to be maintained in `C
T2 = 40               // ambient temperature in summer in `C
QL = 10               // power to be provided by refrigerator in kW


// at 40`C
h3 = 74.527              // in kJ/kg
h2 = 203.051             // in kJ/kg
s2 = 0.682               // in kJ/kg K

// at -20 `C
hf = 17.8                // in kJ/kg
hfg = 160.81             // in kJ/kg
sf = 0.073               // in kJ/kg K
sfg = 0.6352             // in kJ/kg K

s1=s2                    // s1 = sf+X1*sfg
X1 = (s1-sf)/sfg

h1 = hf + X1*hfg         // in kJ/kg
h4 = h3

COP = (h1-h4)/(h2-h1)    // COP of refrigerator

W = QL/COP               // power required to operate refrigerator       

R_fw = QL/(h1-h4)        // flow rate of refrigerator in kg/s


// Output Results
mprintf('COP of refrigerator = %4.3f' ,COP);
mprintf('\n Power required to operate refrigerator = %4.3f kW' ,W)
mprintf('\n Refrigerant flow rate = %4.4f kg/s' ,R_fw);
