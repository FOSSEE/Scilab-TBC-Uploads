//CAPTION: Equivalent_Elements_of_a_Hybrid-Pi_Common-Emitter_Circuit
//CHAPTER NO.-5
//Example No.5-1-1 , Page No.-195 
                                                                     
//(a) Program_to_find_the_mutual_inductance_gm. 
         
                                                                     
ic=6*(10^-3);//Collector_Current
vt=26*(10^-3); //vt=26mV_at_300k_is_the_voltage_equivalent_of_temperature        
gm=ic/vt;//the_mutual_inductance_is gm=(ic/vt)   
disp(gm,'the_mutual_inductance_is gm(in mho)=');                      

//(b) Program_to_find_the_input_inductance_gb_and_resistance_R 

hfe=120;//hfe= common-emitter_current_gain_factor
gb=gm/hfe;//input_inductance
R=1/gb; //Resistance

disp(gb,'input_inductance gb(in mho)=');
disp(R,'input_resistance R (in ohms)=');

//(c)Program_to_find_the_electron_diffusion_coefficient_Dn

un=1600;//electron_Mobility
Dn=un*vt; // Dn=un*kt/q=un*26*(10^-3);

disp(Dn,'electron_diffusion_coefficient_Dn(in cm2/s)=');

//(d)Program_to_find_the_diffusion_capacitance_Cbe
Wb=(10^-8); //cross_sectional_area
Cbe=(gm*(Wb^2))/(2*Dn*(10^-7));
Cbe=Cbe/(10^-12);
disp(Cbe,'diffusion_capacitance_Cbe(in pF)=');