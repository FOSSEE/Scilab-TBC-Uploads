// Process a-b
Qab = 0;
Wab = 2170; // in KJ/min
Eab = Qab-Wab; 
// Process b-c
Qbc = 21000;
Wbc = 0; 
Ebc = Qbc-Wbc;
// Process c-d
Qcd = -2100;
Ecd = -36600; 
Wcd = Qcd-Ecd;
// Process d-a
Q = -17000; // Total heat transfer
Qda = Q-Qab-Qbc-Qcd; 
Eda = -Eab-Ebc-Ecd;
Wda = Qda-Eda;
M = [Qab Wab Eab ; Qbc Wbc Ebc; Qcd Wcd Ecd; Qda Wda Eda];
disp(M,"The completed table is")

