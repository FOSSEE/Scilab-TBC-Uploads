                                                     
//CHAPTER-4                                                         
// EXAMPLE:4-2-1,  page no.-144.

// (a) program_to_find_the_cut_off_frequency_(fc)_of_circular_waveguide_in_TE11_mode


radius=0.05  ;                                                             //Given .Here radius_is_in_metres. 
f=3*(10^9);                                                                //operating_frequency_is_3_GHZ
uo=(4*(%pi))*(10^-7) ; eo=8.85*(10^(-12));                                 //scientific_values_of_permeability_and_permittivity_in_free_space
m=1          ;           n=1;                                              //Given_that_a_TE11_mode_is_propagating.
X=1.841;                                                                   //For_TE11_mode_in_circular_waveguide_X= (kc*radius) =1.841
              
kc=X/radius;                                                               //cut-off_wave_number
fc=kc/((2*%pi)*(sqrt(uo*eo)));                                             //since fc=kc/((2*%pi)*(sqrt(uo*eo)));
disp(fc/(10^9),'cut-off_frequency_for_TE10_mode_in_GHZ=');                 // display_cut-off_frequency_in_GHZ_by_dividing_by_(10^9)for_TE10_mode 




// (b) program_to_find_the_guide_wavelength(lg)_of_the_wave__at_operating_frequency_of_3GHZ


bg=sqrt((((2*%pi*3*(10^9))^2)*(uo*eo)) - (kc^2));      //bg_is_the_phase_constant_in_radian/metre,_bg=sqrt((w^2)*(uo*eo))-(kc^2)); where w=2*%pi*f
lginmetres=(2*%pi)/bg;                                 //Guide_wavelength_is_in_meters
lgincm=100*lginmetres;                                 //Guide_wavelength_is_in_centimetres
disp(lgincm,'Guide_wavelength_for_a_wave_at_a_frequency_of_3.5GHZ__(cm)=');  // display_Guide_wavelength_for_TE10_mode



// (c) program_to_find_the_Guide_wavelength_in_the_wave_guide
zg=(2*%pi*(3*(10^9))*uo)/bg;                            //Zg_is_the_characteristic_wave_impedence ,Zg=(w*uo)/bg; where w=2*%pi*f
disp(zg,'wave_impedence_zg_in_the_wave_guide(ohm)=')    //display_wave_impedence_in_the_wave_guide