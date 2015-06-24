//CAPTION: Directional_Coupler

//Chapter -4 
//EXAMPLE: 4-5-1  PAGE NO. 170

//(a)program_to_find_the_amount_of_the_power_delivered_in_the_load_Zl

PT4=8;                                                  //Given.Transmitted_power_to_Bolometer_1_at_port_4
s=2;                                                    //Given.VSWR_of_2.0_is_introduced_on_arm 4_by_Bolometer 1    
r4=(s-1)/(s+1);                                         //reflection_coefficient_at_port 4(r4)
PR4=8/8;                                                //(r4^2)=PR4/PI4=PR4/(PR4+PT4)=PR4/PR4+8=1/9  =>  8PR4=8 
PI4=PT4 + PR4;                                          //PI4=power_incident_at_port_4 ;PT4=power_transmitted_at_port 4;PR4=power_reflected_at_port 4 
disp(PI4,'power_incident_at_the_port_4_is_(mW)=');
disp(PR4,'power_reflected_from_the_port 4_is_(mW) =');

disp('Since port 3 is matched and the Bolometer at port 3 reads 2mw ,then 1 mw must be radiated through the holes .Since 20 dB is equivalent to a power of 100:1,the power input at port 1 is given by=');

PI2=100*PI4;                                                                  //attenuation=20=10*log(PI1/PI4)
disp(PI2,'power_input_at_port_2_is_given_by_(mW)=');

PR2=100*PR4;                                                                   //attenuation=20=10*log(PR2/PR4)
disp(PR2,'power_reflected_from_the_load_at_port_2_is_given_by_(mW)=');

PT2=PI2-PR2;                                                                   //transmitted power = incident power - reflected power
disp(PT2,'power_dissipated_in_the_load_at_port_2_is_given_by_(mW) =');  




//(b)Program_to_find_the_VSWR_on arm 2

r=sqrt(PR2/PI2);                                                              //reflection_coefficient_at_port 2
s=(1+r)/(1-r);                                                               //VSWR ON ARM 2                                                   
disp(s,'value_of_VSWR_ON_ARM 2:::=');
 