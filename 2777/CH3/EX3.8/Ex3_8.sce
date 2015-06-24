
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.8

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

S = 60;                // Tranformer Rating in kVA
V1 = 6600;             // HV Side Voltage Rating of the Transformer in Volts
V2 = 220;              // LV Side Voltage Rating of the Transformer in Volts
R1 = 7.8;              // primary Resistances of the Transformer in Ohms
R2 = 0.0085;           // Secondary Resistances of the Transformer in Ohms


// CALCULATIONS

a = V1/V2;             // Transformation Ratio
Rp = R1+(a^2)*R2;      // Resistance referred to Primary side in Ohms 
Rs = (R1/(a^2))+R2;    // Resistance referred to Secondary side in Ohms
Ip = (S*1000)/V1       //  Current in Primary Side in Ampheres
Cu_loss = Rp*(Ip^2);   // Copper loss in Transformer in Watts


// DISPLAY RESULTS

disp("EXAMPLE : 3.8 : SOLUTION :-") ;
printf("\n (a) Equlivalent Resistance as Referred to Primary Side, Rp = % .2f ohms \n",Rp)
printf("\n (b) Equlivalent Resistance as Referred to Secondary Side, Rs = % .5f ohms \n",Rs)
printf("\n (c) Total Copper Loss, Cu_loss = % .2f W \n",Cu_loss)

