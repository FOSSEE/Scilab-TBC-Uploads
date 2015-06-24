// Scilab code Exa7.6.1: To calculate the energy resolution of gamma rays emitted by Na-22 for channel first and second :P.no. 313 (2011)
// For 511 KeV gamma rays (for channel first)
F_W_H_M_1 = 97; //  Frequency width at half maximum for channel first
P_pos_1 = 1202; // Peak position for channel first
Res_KeV_1 = F_W_H_M_1/P_pos_1*511; // Resolution in KeV for channel first
// For 1275 KeV gamma rays (for channel second) 
F_W_H_M_2 = 82; // Frequency width at half maximum for channel second
P_pos_2 =  1202; // Peak position for channel second
Res_KeV_2 = round(F_W_H_M_2/P_pos_2*1275); // Resolution in KeV for channel second
  printf("\n Resolution  for channel first  = %d KeV  \n Resolution  for channel second  = %d KeV ",Res_KeV_1, Res_KeV_2)
  // Result
//   Resolution  for channel first = 41 KeV  
//   Resolution  for channel second = 87 KeV 
 










































































