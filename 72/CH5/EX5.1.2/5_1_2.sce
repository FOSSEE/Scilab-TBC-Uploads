
//CHAPTER NO.-5
//Example No.5-1-2 , Page No.-203 
                                                                     
//(a) Program_to_find_the_impurity_desities_in_the_emitter,base_and_collector_regions
                                                                                                                           
disp('the impurity densities (in cm-3)are read from Fig A-1 in the Appendix A as NdE=1*(10^19)[the impurity density in the n-type emitter region], NaB=1.5*(10^17) [the impurity density in the p-type base region],NdC=3*(10^14)[the impurity density in the n-type collector region]'); 
NdE=1*(10^19); 
NaB=1.5*(10^17);
NdC=3*(10^14);

//(b)Program_to_find_the_mobilities_in_the_emitter,base and collector_regions
disp('the mobilities(in cm2/v*s)are read from fig A-2 in the Appendix A as upe=80[mobility in the emitter] , unE=105[mobility in the emitter] , upB=400[mobility in the base] , unC=1600[mobility in the collector]'); 
upE=80;
unE=105;
upB=400;
unC=1600;

//(c)Program_to_find_the_diffusion_lengths_in_the_emitter,base and collector_regions
disp('the_diffusion_constants_are_computed_to_be');
Vt=26*(10^-3);

DpE=upE*Vt;
DnE=unE*Vt;
DpB=upB*Vt;
DnC=unC*Vt;
disp(DpE,'DpE=');
disp(DnE,'DnE=');
disp(DpB,'DpB=');
disp(DnC,'DnC=');

//(d)Program_to_compute_the_equilibrium_densities_in the emitter,base and_collector_regions

disp('the_equlibrium_densities_are');
ni=1.5*(10^10);

pEo=(ni^2)/NdE; 
npB=(ni^2)/NaB;
pCo=(ni^2)/NdC;
disp(npB,'npB=');
disp(pEo,'pEo=');
disp(pCo,'pCo=');

//(e)Program_to_compute_the_terminal_currents

disp('the_terminal_currents_are_computed_as follows. From Eq 5-1-39, the_electron_current_in_the_emitter_is ');
A=2*(10^-2);// cross-section_area
q=1.6*(10^-19);
W=(10^-5);//base_width
Le=(10^-4);//Diffusion_length_in_emitter
Ve=.5;//Emitter_junction_voltage
InE=-(A*q*DnE*(ni^2)*exp(Ve/Vt))/(NaB*W);//Ine=-(Aq*Dp*(ni^2)*(exp(Ve/Vt)-1))/(Le*Nd);
InE=InE/(10^-3);
disp(InE,'the_electron_current_in_the_emitter_is(in mA)');

disp('From Eq5-1-42,_the_hole_current_in_the_emitter_is ');
IpE=(A*q*DpE*(ni^2)*(exp(Ve/Vt)-1))/(Le*NdE);//Ipe=(A*q*De*peo*(exp(Ve/Vt)-1))/Le  =  (A*q*Dp*(ni^2)*(exp(Ve/Vt)-1))/(Le*Nd)
IpE=IpE/(10^-6);
disp(IpE,'the_electron_current_in_the_emitter_is(in uA)');



disp('From Eq-5-1-24, the_reverse_saturation_current_in_the_collector_is ');
ICo=-(A*q*DnE*(ni^2)/(NaB*W))-(A*q*DpE*pEo)/Le;
ICo=ICo/(10^-12);
disp(ICo,'the_electron_current_in_the_emitter_is(in pA)');


disp('From Eq-5-1-40,_the_electron_current_which_reaches_the_collector is ');
InC=-(A*q*DnE*(ni^2)*exp(Ve/Vt)/(NaB*W));
InC=InC/(10^-3);
disp(InC,'the_electron_current_which_reaches_the_collector_is (in mA)');

IE=(-IpE*(10^-6))+(InE*(10^-3));
IE=IE/(10^-3);
disp(IE,'the_emitter_current_is (in mA)');

IC=(-ICo*(10^-12))-(InC*(10^-3));
IC=IC/(10^-3);
disp(IC,'the_collector_current_is (in mA)');

IB=(IpE*(10^-6))-[((InE*(10^-3)))-(InC*(10^-3))]+(ICo*(10^-12));
IB=IB/(10^-6);
disp(IB,'the_current_in_the_base_terminal_is_(in uA)');

disp('NOTE: The_recombination-generation_currents_in_the_spcae-charge_regions_are_not_counted');

