//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 3

clc;
disp("CHAPTER 2");
disp("EXAMPLE 3");

//VARIABLE INITIALIZATION
v_m=5;                        //peak value of voltage in Volts

//SOLUTION
v_av=(integrate('v_m*sin(x)','x',0,%pi))/(%pi);
v_rms=(integrate('(v_m*sin(x))^2','x',0,%pi))/(%pi);
v_rms=sqrt(v_rms);
disp(sprintf("Average value of full wave rectifier sine wave is %f V",v_av));
disp(sprintf("Effective value of full wave rectifier sine wave is %f V",v_rms));

//END
