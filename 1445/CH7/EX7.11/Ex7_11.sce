//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 11

disp("CHAPTER 7");
disp("EXAMPLE 11");

//2200/220 V 44 kVA transformer with 50 turns in the secondary
//VARIABLE INITIALIZATION
va=44000;                       //
v1=2200;                        //primary voltage in Volts
v2=220;                         //secondary voltage in Volts
N2=50;                          //turns in secondary coil

//SOLUTION
// N1/N2=V1/V2
N1=N2*(v1/v2);
disp("SOLUTION (a)");
disp(sprintf("The no. of turns on HT side is %f",N1));
//
//since losses are negligible, input=output, V1.I1=V2.I2
I1=va/v1;
I2=va/v2;
disp("SOLUTION (b)");
disp(sprintf("The primary full load current is %.0f Amp",I1));
disp(sprintf("The secondary full load current is %.0f Amp",I2));
disp(" "); 
// 
//END
