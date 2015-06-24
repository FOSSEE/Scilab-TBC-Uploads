//CAPTION: Heterojunction_Bipolar_Transistor(HBT)
//CHAPTER NO.-5
//Example No.5-2-1 , Page No.-213 
                                                                     
//(a) Program_to_determine_the_latice_match_present_in_percent 
  disp('the_latice_match_present_is_within 1%');  
  
  //(b) Program_to_find_the_conduction-band_differential_between_Ge_and_GeAs
  X1=4;//electron_affinity
  X2=4.07;//electron_affinity
  AE=X1-X2;
disp(AE,'the_conduction-band differential_is(in eV) =');  
  
//(c) Program_to_find_the_valence-band_differential_between_Ge_and_GeA  
   Eg2=1.43;//energy_gap
 Eg1=.8;//energy_gap
  Ev=Eg2-Eg1-AE
disp(Ev,'the valence-band differential is(in eV) =');  
 