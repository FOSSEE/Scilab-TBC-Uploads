//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 3

disp("CHAPTER 2");
disp("EXAMPLE 3");

//To find average and rms value rectified sine wave shown in Fig. 2.22

//VARIABLE INITIALIZATION
//Time period T=pi
v_m=5;                        //peak value of voltage in Volts


//SOLUTION
//average value Vav by integrating v over 0 to pi and dividing by pi
v_av=(integrate('v_m*sin(x)','x',0,%pi))/(%pi);
//first v squre rms
v_rms=(integrate('(v_m*sin(x))^2','x',0,%pi))/(%pi);
//then V rms: The previous variable reused
v_rms=sqrt(v_rms);
//truncating display to 3 digits
disp(sprintf("Average value of full wave rectifier sine wave is %4.3f V",v_av));// answer is wrongly shown as 3.185 in the book
//truncating display to 2 digits
disp(sprintf("Effective value of full wave rectifier sine wave is %4.2f V",v_rms));
//END
