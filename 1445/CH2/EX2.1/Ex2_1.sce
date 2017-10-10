//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 1

clc;
disp("CHAPTER 2");
disp("EXAMPLE 1");

//SOLUTION

//average value
v_av=(integrate('sin(x)','x',0,%pi))/(2*%pi);

//rms value
v_rms=(integrate('sin(x)^2','x',0,%pi))/(2*%pi);
v_rms=sqrt(v_rms);

ff=v_rms/v_av;
disp(sprintf("The form factor is %f",ff));

//END

  
