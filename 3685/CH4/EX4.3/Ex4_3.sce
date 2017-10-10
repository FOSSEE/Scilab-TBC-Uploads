clc
// Process a-b
Qab = 0 // Heat transfer along the path ab in kJ/ min
Wab = 2170 // Work transfer along the path ab in kJ/min
Eab = Qab-Wab // Change in internal energy along the path ab in kJ/min
// Process b-c
Qbc = 21000 // Heat transfer along the path bc in kJ/ min
Wbc = 0 // Work transfer along the path bc in kJ/min
Ebc = Qbc-Wbc // Change in internal energy along the path bc in kJ/min
// Process c-d
Qcd = -2100 // Heat transfer along the path cd in kJ/ min
Ecd = -36600  // Change in internal energy along the path cd in kJ/min
Wcd = Qcd-Ecd  // Work transfer along the path cd in kJ/min
// Process d-a
Q = -17000  // Total heat transfer in kJ/min
Qda = Q-Qab-Qbc-Qcd // Heat transfer along the path da in kJ/ min 
Eda = -Eab-Ebc-Ecd  // Change in internal energy along the path da in kJ/min 
Wda = Qda-Eda // Work transfer along the path da in kJ/min
printf("\n Example 4.3")

M = [Qab Wab Eab ; Qbc Wbc Ebc; Qcd Wcd Ecd; Qda Wda Eda];
disp(M,"The completed table is:")
W = Qab+Qbc+Qcd+Qda
printf("\n Net rate of work output is %f kW",W/60)

