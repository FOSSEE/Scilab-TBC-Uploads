//CAPTION: Silicon_Bipolar_Transistor
//CHAPTER NO.-5
//Example No.5-1-3 , Page No.-206 
                                                                     
//(a) Program_to_find_the_mobilities_un_and_up 

 disp('the mobilities(in cm2/v.s )are read from Fig-A-2 in Appendix A as un=200 for NdE=5*(10^18) cm-3 and up=500 for Na=5*(10^16) cm-3');
  un=200;
  up=500;
  
  //(b) Program_to_find_the_diffusion_coefficients_Dn_and_Dp 
  Vt=26*(10^-3);//Vt=kt/q
  Dn=un*Vt;
  Dp=up*Vt;  
  
  disp(Dn,'diffusion_coefficient_are_Dn(in cm2/s)=');  
  disp(Dp,'and__Dp(in cm2/s)=');                

//(c) Program_to_find_the_emitter_efficiency_factor_y
W=(10^-3);//Base_width
Le=(10^-2);//Emitter_Length
Na=5*(10^16);//Acceptor_density_in_base_region
Nd=5*(10^18);//Donor_density_in_emitter_region
y=1/(1+((Dp*Na*W)/(Dn*Nd*Le)));

disp(y,'emitter_efficiency_factor_y=');


//(d) Program_to_find_the_transport_factor_B

t=10^-6;//hole_lifetime
B=1-(W^2)/(2*Dn*t);//transport_factor

disp(B,'the transport factor B=');


//(e) Program_to_find_the_current_gain_a

a=B*y;

disp(a,'the current_gain a=');
