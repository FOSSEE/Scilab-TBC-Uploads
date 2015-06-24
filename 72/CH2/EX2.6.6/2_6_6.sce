//Caption:Computation_of_a_copper_film_coating  
//chapter_no.-1,  page_no.-74                                        
//Example No.-2-6-6 
clc;              
                           
//(a) Program_to_find_copper-film_surface_resistance 
                              
                                                                         
t=60*(10^(-10));//Film_Thickness
o=5.8*(10^7);    //Bulk_conductivity                                                                                                                   
p=420*(10^(-10));   //Electron_mean_free_path                                                                                                            
of=[(3*t*o)/(4*p)]*[0.4228 + log(p/t)];////the_copper-film_conductivity_is__of=[3*t*o/4*p]*[0.4228 + ln(p/t)]



Rs=1/(t*of);//the_copper_film_surface_resistance_is_given_by__Rs=1/(t*of) in_Ohms_per_square
disp(Rs,'the_copper_film_surface_resistance_in_Ohms_per_square_is');


//(b) Program_to_find_the_microwave_attenuation 

Attenuation=40-20*log10(Rs)       //Microwave_attenuation  

disp(Attenuation,'Microwave__Attenuation__in db is:');

//(c)Light_transmittance_T

disp('From figure No.2-6-11 of Light transmittance T and light attenuation loss L versus wavelength with film thickness t as parameter for copper film, we find that for given copper film of thickness 60 angstrom ,the LIGHT TRANSMITTANCE T is estimated to be 82%');

//(d)light_reflection_loss_R

disp('From the same figure the LIGHT REFLECTION LOSS R is about 18% ');