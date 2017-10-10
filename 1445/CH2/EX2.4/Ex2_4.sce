//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 4

clc;
disp("CHAPTER 2");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
v_m=10;                        //peak value of voltage in Volts
angle=60*(%pi/180);            //delay angle in radians

//SOLUTION
v_av=(integrate('v_m*sin(x)','x',angle,%pi))/(%pi);
v_rms=(integrate('(v_m*sin(x))^2','x',angle,%pi))/(%pi);
v_rms=sqrt(v_rms);
disp(sprintf("Average value of full wave rectifier sine wave is %f V",v_av));
disp(sprintf("Effective value of full wave rectifier sine wave is %f V",v_rms));

//END
