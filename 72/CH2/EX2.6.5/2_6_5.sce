//Caption:Calculation_of_a_gold_film_coating
//chapter_no.-2,  page_no.-69
//Example No.-2-6-5  

clc;
                               
//(a) Program_to_find_gold-film_surface_resistance 
                                                                                   
                                                                         
t=80*(10^(-10));//Film_Thickness
o=4.1*(10^7);    //Bulk_conductivity                                                                                                                   
p=570*(10^(-10));   //Electron_mean_free_path                                                                                                            
of=[(3*t*o)/(4*p)]*[0.4228 + log(p/t)];//the_gold-film_conductivity_is_of=[3*t*o/4*p]*[0.4228 + ln(p/t)] 

Rs=1/(t*of);//the_gold_film_surface_resistance_is_given_by__Rs=1/(t*of) in_Ohms_per_square
disp(Rs,'the_gold_film_surface_resistance_in_Ohms_per_square_is');




//(b) Program_to_find_the_microwave_attenuation 

Attenuation=40-20*log10(Rs)       //Microwave_attenuation  

disp(Attenuation,'Microwave__Attenuation_is_in_db_is:');


//(c)Light_transmittance_T

disp('From figure No.2-6-5 of Light transmittance T and light attenuation loss L versus wavelength with film thickness t as parameter for gold film, we find that for given gold film of thickness 80 angstrom ,the LIGHT TRANSMITTANCE T is estimated to be 75%');



//(d)light_reflection_loss_R

disp('From_the_same_figure_the_LIGHT_REFLECTION_LOSS_R_is_about_25% ');
                                                             