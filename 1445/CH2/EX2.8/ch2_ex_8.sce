//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 8

disp("CHAPTER 2");
disp("EXAMPLE 8");

//VARIABLE INITIALIZATION
v=300/sqrt(2);                   //in Volts
angle_v=110;                     //in degrees
I=15/sqrt(2);                    //in Amperes
angle_I=80;                      //in degrees

//SOLUTION
Z=v/I;
angle_Z=angle_v-angle_I;
disp(sprintf("The circuit impedance is %d Ω",Z));
disp(sprintf("The phase angle is %d degrees",angle_Z));
p_av=v*I*cos(angle_Z*(%pi/180));  //to convert angle_z from degrees to radians  
disp(sprintf("The average power drawn is %f W",p_av));

//END
