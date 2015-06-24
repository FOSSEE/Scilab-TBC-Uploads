//CAPTION: Power-Frequency_Limitation
//CHAPTER NO.-5
//Example No.5-1-4 , Page No.-211 
                                                                     
// Program_to_determine_the_maximum_allowable_power_that_the_transisitor_can_carry 
    
  Xc=1;//Reactance
  ft=4*(10^9);//Transit_cut-off_frequency
  Em=1.6*(10^5);//maximum_electric_field
  Vx=4*(10^5);//saturation_drift_velocity
  
  Pm=(((Em*Vx/(2*%pi)))^2)/(Xc*(ft^2)); 
 disp(Pm,'the_maximum _allowable_power(in W)_that_the_transisitor_can_carry_is ');
