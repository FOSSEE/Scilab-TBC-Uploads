//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 4

disp("CHAPTER 2");
disp("EXAMPLE 4");

//VARIABLE INITIALIZATION
v_m=10;                        //peak value of voltage in Volts
angle=60*(%pi/180);            //delay angle in radians

//SOLUTION
//average value Vav by integrating v over 0 to pi  and dividing by pi
v_av=(integrate('v_m*sin(x)','x',angle,%pi))/(%pi);
//effective value
v_rms=(integrate('(v_m*sin(x))^2','x',angle,%pi))/(%pi);
v_rms=sqrt(v_rms);
disp(sprintf("Average value of full wave rectifier sine wave is %4.2f V",v_av));// truncade to two decimals
//                                                                              //text book answer is 4.78
disp(sprintf("Effective value of full wave rectifier sine wave is %4.2f V",v_rms));//text book answer is 6.33

//END
