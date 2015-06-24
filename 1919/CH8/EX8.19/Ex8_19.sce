
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 19

clear ;clc;

//Given data
T1 = -25              // drug temperature to be maintained in `C
T2 = 35               // ambient temperature in `C
QL = 0.4              // rate of energy loss per `C difference in kW


// Freon-12 at 35`C
h3 = 69.494              // in kJ/kg
h2 = 201.299             // in kJ/kg
s2 = 0.6834              // in kJ/kg K

// Freon-12 at -25 `C
hf = 13.315               // in kJ/kg
hfg = 163.037             // in kJ/kg
sf = 0.0552               // in kJ/kg K
sfg = 0.6570              // in kJ/kg K

// Calculations
s1=s2                    // s1 = sf+X1*sfg

X1 = (s1-sf)/sfg

h1 = hf + X1*hfg         // in kJ/kg

h4 = h3

COP = (h1-h4)/(h2-h1)    // COP of refrigerator

W = QL*(T2-T1)/COP   // power required to operate refrigerator            

COP_carnot = (T1+273.15)/(T2-T1)    // COP of a carnot refrigerator


// Output Results
mprintf('COP of refrigerator = %4.3f' ,COP);
mprintf('\n Power required to operate refrigerator = %4.3f kW' ,W);
mprintf('\n COP of Carnot refrigerator = %4.4f ' ,COP_carnot);
