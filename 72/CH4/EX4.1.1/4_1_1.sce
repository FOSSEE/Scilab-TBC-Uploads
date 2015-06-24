//CAPTION: TE10_In_Rectangular_Waveguide
//CHAPTER-4        
// EXAMPLE: 4-1-1,page no.-128.

//(a)program_to_find_the_cut-off_frequency_(fc)_of_an_airfilled_rectangular_waveguide_in_TE10_mode.


a=0.07       ;     b=0.035     ;                                           //wave-guide_dimensions_in_metres
f=3.5*(10^9);                                                              //Given_that_guide_is_operating_at_a_frequency_of 3.5 GHZ 
c=3*(10^8);                                                                // c_is_the_speed_of_the_light 
m=1  ;   n=0;                                                              //Given_that_guide_operates_in_the_dominant_mode_TE10

fc=c/(a*2);                                                                //since,fc=(c/2)*sqrt(((m/a)^2)+((n/b)^2)). For TE10 mode m=1,n=0,fc=c/2*a 
disp(fc/(10^9),'cut-off_frequency_for_TE10_mode_in_GHZ=');                 //display_fc ,fc_is_divided_by_10^9 to_obtain_frequency_in_GHZ



// (b) program_to_find_the phase_velocity_of_the wave_in_the_guide_at_a_frequency_of_3.5GHZ

f=3.5*(10^9);                                                               //Given  that_guide_is_operating_at_a_frequency_of_3.5.GHZ 
vg=c/(sqrt(1-((fc/f)^2)));                                                  //since , phase_velocity=c/(sqrt(1-((fc/f)^2))) 
disp(vg,'phase_velocity_for_a_wave_at_a_frequency_of_3.5GHZ__(m/s)=');      //display_the_phase_velocity




// (c) program_to_find_the_guide_wavelength(lg_of_the_wav__at_a_frequency_of 3.5GHZ


lo=c/f;                                                                     // lo= wavelength in an unbounded dielectric and lo is in metres
lginmetres=lo/(sqrt(1-((fc/f)^2)));                                         //since ,lg=lo/sqrt(1-(fc/f^2));  guide_wavelength(lg)_is_in_metres
lgincm=100*lginmetres;                                                      //guide_wavelength (lg) is_in_centimetres
disp(lgincm,'Guide_wavelength_for_a_wave_at_frequency_of_3.5GHZ_(cm)=')  //display_the_guide_wavelength





 