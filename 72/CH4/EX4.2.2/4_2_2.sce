//CAPTION:Wave_Propagation_In_circular_Waveguide

//chapter-4
//Example-4-2-2  page no.-147

//program_to_find_all_the_TE(n,p)_and_TM(n,p)modes_for_which_energy_transmisssion_is_possible.

radius=.02;                                                                //Given. Here_radius_is_in_metres. 
uo=(4*(%pi))*(10^-7); eo=8.85*(10^(-12));                                  //scientific_values_of_permeability_and_permittivity_in_free_space
f=(10^10);                                                                 //guide_is_operating_at_the_frequency_of_10GHZ
wc=(2*%pi*f);                                                              //since, wc=(2*%pi*f)
kc=wc*sqrt(uo*eo);                                                         //kc_is_cut-off_wave_number  
X=kc*radius ;                                                              //the product X=(kc*radius) for_a_given_mode_is_constant
disp(kc*radius,'The_value_of_the_product X=(kc*radius)is = ');                  //display_the_product_X=(kc*a)
disp('Any mode having a product (kc*radius) less than or equal to 4.18 will propagate the wave with a frequency of 10 GHZ .This is (kc*radius)<=4.18');
                                          

syms i j                                                                    //Defining_the_variables


p=[3.832 1.841 3.054 4.201 5.317 6.416;7.016 5.331 6.706 8.015 9.282 10.520 ; 10.173 8.536 9.969 11.346 12.682 13.987]//represent_the_values_of X_for_                                                                                        different_modes_in_a_form_of_matrix. Where_columns_represent                                                                                            the_n_values_of_mode_and_rows_represent_the_m_values_of_mode.

for i=1:1:3                                                                 //value_of_i_traverse_across_the_rows
for j=1:1:6                                                                 //value_of_j_traverse_across_the_columns
if(X >=p(i,j))                                                              //check_if_the_value_in(n,p)_matrix_is_less_than_or_equal_to_X
disp(p(i,j),i,j-1,'TE mode(n,p) and corresponding value of X=');            //display_TE_mode_for_which_value_in [(n,p)matrix] <= X and print                                                                                           corresponding_value_of_X
end                                                                         //end if
end                                                                         //end for
end                                                                         //end for


m=[2.405 3.832 5.136 6.380 7.588 ; 5.520 7.106 8.417 9.761 11.065 ;        //represent_the_values_of_X_for_different_modes_in_a_form_of_matrix.Where                                                                          columns_represent_the_n_values_of_mode_and_rows_represent_the_m_values_of_mode.   
 8.645 10.173 11.620 13.015 14.372]

for i=1:1:3                                                                 //value_of_i_traverse_across_the_rows_in [(n,p)matrix].
for j=1:1:5                                                                 //value_of_j_traverse_across_the_columns in [(n,p)matrix].
if(X >=m(i,j))                                                              //check_if_the_value_in(n,p)_matrix_is_less_than_or_equal_to_X
disp(m(i,j),i,j-1,'TM mode(n,p) and corresponding value of X=');            //display_TM_mode_for_which_value in [(n,p)matrix] <= X and_print                                                                                         corresponding_value_of_X.
end                                                                         //end if
end                                                                         //end for
end                                                                         //end for