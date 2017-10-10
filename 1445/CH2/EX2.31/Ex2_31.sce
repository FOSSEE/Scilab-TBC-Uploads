//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 31 // read it as example 30 in the book on page 2.84

clc;
disp("CHAPTER 2");
disp("EXAMPLE 31");

//VARIABLE INITIALIZATION 
//function of the waveform is deduced to be y=10+10.t/T
//SOLUTION
//Yav=(1/T).Integral(ydt) from 0 to T
//say
T=1;                                // 1 sec
Yav=(1/T)*integrate('(10+10*t/T)', 't', 0, 1);
disp(sprintf("The average value of waveform is %f",  Yav));
//RMS value Yrms=(1/T).Integral(y^2.dt) from 0 to T
Yms=(1/T)*integrate('(10+10*t/T)^2', 't', 0, 1);
disp(sprintf("The RMS value of waveform is %f",  sqrt(Yms)));
disp(" "); 
// 
//END

