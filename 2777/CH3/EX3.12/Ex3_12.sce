
// ELECTRICAL MACHINES
// R.K.Srivastava
// First Impression 2011
// CENGAGE LEARNING INDIA PVT. LTD 

// CHAPTER : 3 : TRANSFORMERS 

// EXAMPLE : 3.12

clear ; clc ; close ; // Clear the work space and console


// GIVEN DATA

N1 = 1000;               // 1st Test at No-load condition f1 Frequency, Speed in RPM
Vo1 = 250;               // 1st Test at No-load condition f1 Frequency, Voltage in Volts
Io1 = 0.5;               // 1st Test at No-load condition f1 Frequency, Current in Amphere
Wo1= 230;                // 1st Test at No-load condition f1 Frequency, Power in Watts

N2 = 900;                // 2nd Test at No-load condition f2 Frequency, Speed in RPM
Vo2 = 225;               // 2nd Test at No-load condition f2 Frequency, Voltage in Volts
Io2= 0.5;                // 2nd Test at No-load condition f2 Frequency, Current in Amphere
Wo2 = 200;               // 2nd Test at No-load condition f2 Frequency, Power in Watts
p = 6;                  // Number of poles of single phase alternator
N = 220;                // Number of the turns of single phase alternator
R = 0.66;               // Resistance of the single phase alternator in Ohms


// CALCULATIONS

f1 = (N1*p)/120;              // 1st case Supply Frequency in Hertz
Ratio1 = Vo1/f1;              // 1st case Ratio of the Volatge and Frequency in Volts/Hertz
f2 = (N2*p)/120;              // 2nd case Supply Frequency in Hertz
Ratio2 = Vo2/f2;              // 2nd case Ratio of the Volatge and Frequency in Volts/Hertz

c = (Wo1-(Io1^2)*R)/f1;         // No-load corrected losses Eq 1 in Watts
d = (Wo2-(Io2^2)*R)/f2;         // No-load corrected losses Eq 2 in watts

x = [ 1 f1 ; 1 f2 ];            // No-load corrected losses Eq 1 in watts
y = [ c ; d ];                  // No-load corrected losses Eq 2 in watts

E = x\y;                        // Solution of constants A in Watts/Hertz and B in watts/Hertz-Sqare in matrix form
A = E(1,1);                     // Solution of constant A in Watts/Hertz
B = E(2,1);                     // Solution of constant B in watts/Hertz-Sqare
Ph = f1*A;                      // Hysteresis loss at 50 Hertz in Watts
Pe = (f1^2)*B;                  // Eddy current loss at 50 Hertz in Watts


// DISPLAY RESULTS

disp("EXAMPLE : 3.12 : SOLUTION :-") ;
printf("\n (a) Hysteresis loss at %.f Hertz , Ph = %.3f W \n ",f1,Ph);
printf("\n (b) Eddy current loss at %.f Hertz , Pe = % .2f W \n",f1,Pe);



