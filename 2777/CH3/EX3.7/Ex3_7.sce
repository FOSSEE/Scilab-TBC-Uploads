
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.7

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

a = 100/200;                        // Turn ratio of the Ideal transformer
R = 1.0;                            // Resistance across the secondary side having 200 turns in Ohms  


// CALCULATIONS

R1 = (a ^ 2)*R;                     // Referred value of the resistance from Primary side having 100 turns in Ohms


// DISPLAY RESULTS

disp("EXAMPLE : 3.7 : SOLUTION :-") ;
printf("\n (a) Referred value of the %.f Ohm resistance from Primary side having 100 turns , R1 = %.2f ohms \n ",R,R1);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) Referred value of the resistance from Primary side having 100 turns = 0.025 Ohms instead of %.2f Ohms \n ",R1);
