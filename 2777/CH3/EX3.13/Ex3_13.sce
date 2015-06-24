
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.13

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N1 = 1500;               // 1st Test on Transformer at f1 Frequency and Vo1 voltage, Speed in RPM
Vo1 = 250;               // 1st Test on Transformer at f1 Frequency and Vo1 voltage, Voltage in Volts
Wo1= 55;                 // 1st Test on Transformer at f1 Frequency and Vo1 voltage, Power in Watts
N2 = 1200;               // 2nd Test on Transformer at f2 Frequency and Vo2 voltage, Speed in RPM
Vo2 = 200;               // 2nd Test on Transformer at f2 Frequency and Vo2 voltage, Voltage in Volts
Wo2 = 40;                // 2nd Test on Transformer at f2 Frequency and Vo2 voltage, Power in Watts
p = 4;                   // Number of poles of single phase alternator


// CALCULATIONS

f1 = (N1*p)/120;              // 1st case Supply Frequency in Hertz
Ratio1 = Vo1/f1;              // 1st case Ratio of the Volatge and Frequency in Volts/Hertz
f2 = (N2*p)/120;              // 2nd case Supply Frequency in Hertz
Ratio2 = Vo2/f2;              // 2nd case Ratio of the Volatge and Frequency in Volts/Hertz

c = Wo1/f1;         // No-load corrected losses Eq 1 in Watts
d = Wo2/f2;         // No-load corrected losses Eq 2 in watts

x = [ 1 f1 ; 1 f2 ];             // No-load corrected losses Eq 1 in watts
y = [ c ; d ];                   // No-load corrected losses Eq 2 in watts

E = x\y;                        // Solution of constants A in Watts/Hertz and B in watts/Hertz-Sqare in matrix form
A = E(1,1);                      // Solution of constant A in Watts/Hertz
B = E(2,1);                      // Solution of constant B in watts/Hertz-Sqare
Ph1 = f1*A;                      // Hysteresis loss at 50 Hertz in Watts
Pe1 = (f1^2)*B;                  // Eddy current loss at 50 Hertz in Watts
Ph2 = f2*A;                      // Hysteresis loss at 40 Hertz in Watts
Pe2 = (f2^2)*B;                  // Eddy current loss at 40 Hertz in Watts


// DISPLAY RESULTS

disp("EXAMPLE : 3.13 : SOLUTION :-") ;
printf("\n (a.1) Hysteresis loss at %.f Hertz , Ph = %.f W \n ",f1,Ph1);
printf("\n (a.2) Eddy current loss at %.f Hertz , Pe = %.f W \n",f1,Pe1);
printf("\n (b.1) Hysteresis loss at %.f Hertz , Ph = %.f W \n ",f2,Ph2);
printf("\n (b.2) Eddy current loss at %.f Hertz , Pe = %.f W \n",f2,Pe2);
printf("\n\n    [ TEXT BOOK SOLUTION IS PRINTED WRONGLY ( I verified by manual calculation )]\n" );
printf("\n      WRONGLY PRINTED ANSWERS ARE :- (a) Hysteresis loss at %.f Hertz , Ph = 25 W instead of %.f W \n ",f2,Ph2);
