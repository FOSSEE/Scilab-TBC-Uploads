//CAPTION: Operation_Of_a_Balanced_Amplifier

//chapter-4
//Example4-5-2   page no. 174
                                                    
//(a)Program_to_find_out_the_input_and_output_VSWRs.

s11=0;                                                            //for_balanced_amplifier s11=0
s=(1+s11)/(1-s11);                                                //Input_VSWR
disp(s,'input vswr=');

s22=0;                                                            //for_balanced_amplifier s22=0
s=(1+s22)/(1-s22);                                                //output_VSWR
disp(s,'output vswr=');



//(b)Program_to_find_out_the_output_power_in_watts

PO=200*10*2;                                                      //output_power(PO)=[powerinput]*[power_gain_of_each_GaAs_chip]*[n]  ,here n=2
disp(PO/1000,'Output_POWER_in_Watts');                            //display_power_in_watts_by_dividing_by_1000



//(C)Program to find out the linear output power gain in db 

GAIN=10*log10(2);                                             //BECAUSE_TWO_CHIPS_ARE_IN_PARALLEL. Gain=(power gain of each GaAs chip)*log(n),n=2.
disp(GAIN,'Linear_output_power_gain_in_db=');                     //display_linear_output_power_gain_in_db


