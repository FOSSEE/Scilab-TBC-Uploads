
//CHAPTER NO.-5
//Example No.5-2-2 , Page No.-215 
                                                                     
//(a) Program_to_compute_the_built-in voltage_in_the p-GaAs_side
 Na=6*(10^16); //Acceptor_density_in_p-GaAs_side
  w02=-26*(10^-3)*log(Na/(1.8*(10^6)));                                                              
disp(w02,'the_built-in_voltage(in V)  in_the p-GaAs_side');  
                                                                   
 //(b) Program_to_compute_the_hole_mobility 
 
 disp('The hole mobility is read from Fig -A-2 in Appendix A as up=400(cm2/v.s)'); 
 up=400;
 
 //(c) Program_to_compute_the_hole_diffusion_constant
 Dp=up*26*(10^-3); 
 
 disp(Dp,'The_hole_diffusion_constant_is Dp(cm2/s)=');
 
 
  //(d) Program_to_compute_the_minority_hole_density in n-Ge 
  
  ni=1.5*(10^10);
  Nd=5*(10^18);//Donor_density_in_n-Ge_region
  pno=(ni^2)/Nd;
   disp(pno,'the_minority_hole density (cm-3)in_n-Ge_is =');
   
     //(e) Program_to_compute_the_minority_electron_density_in_p-GaAs_region 
  Na=6*(10^16);
 npo=((1.8*10^6)^2)/Na;
   disp(npo,'the_minority_electron_density(in cm-3)_in_p-GaAs_region_is =');
   
   
   //(e) Program_to_compute_the_hole_diffusion_length 
   tp=6*(10^-6);//hole_lifetime
   Lp=sqrt(tp*Dp);
   disp(Lp,'the_hole_diffusion_length(in cm) is =');
   
   //(e) Program_to_compute_the_emitter-junction_current 
   
   A=2*(10^-2);//cross_section
   VE=1;//bias_voltage_at_emitter_junction
   q=1.6*(10^-19);
   l=VE/(26*(10^-3));
   I=(A*q*Dp*pno*(exp(l)-1))/(Lp);
   disp(I,'the_emitter-junction_current(in A)is =');
   
   