//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 1

disp("CHAPTER 2");
disp("EXAMPLE 1");

//Find the Form Factor of the half-wave rectified sine wave as shown in Fig 2.20
//Peak value of voltage is Vm
//Period is 2pi
//v=Vm sinwt  for 0<wt<pi
//v=0         for pi<wt<2pi

//SOLUTION

//average value Vav by integrating v over 0 to pi and pi to 2pi and dividing by 2pi
//assume Vm=1, as value not given
//The second term of integration not computed as v=0 on the range pi to 2pi
v_av=(integrate('sin(x)','x',0,%pi))/(2*%pi);

//rms value 
//assume Vm=1, as value not given
v_rms=(integrate('sin(x)^2','x',0,%pi))/(2*%pi);
v_rms=sqrt(v_rms);

ff=v_rms/v_av;
//truncate the answer to 3 digits while displaying: 
disp(sprintf("The form factor is %4.3f",ff));//The answer in the textbook is wrongly shown as 1.572

//END

  
