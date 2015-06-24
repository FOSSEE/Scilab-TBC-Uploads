//CHAPTER 2- STEADY-STATE ANALYSIS OF SINGLE-PHASE A.C. CIRCUIT
//Example 8

disp("CHAPTER 2");
disp("EXAMPLE 8");

//Given
//V=300.cos(314.t+20) volts
//i=15.cos(314.t-10) Amp
//
//VARIABLE INITIALIZATION
//V=300.cos(314.t+20) volts
//V=300.sin(314.t+110) volts as cos(theta)=sin(theta+90)
//i=15.cos(314.t-10) Amp
//i=15.sin(314.t+80) Amp as cos(theta)=sin(theta+90)
//Now
V=300/sqrt(2);                   //in Volts
angle_V=110;                     //in degrees
I=15/sqrt(2);                    //in Amperes
angle_I=80;                      //in degrees

//SOLUTION
Z=V/I;				//circuit impedance
angle_Z=angle_V-angle_I;	//angle between current and voltage
disp(sprintf("The circuit impedance is %d Ω",Z));
disp(sprintf("The phase angle is %d degrees",angle_Z));
//Pav=Vm*Im.cos (phi) in RL circuit
Pav=V*I*cos(angle_Z*(%pi/180));  //to convert angle_z from degrees to radians  
disp(sprintf("The average power drawn is %7.2f W",Pav));// textboo answer is 1949.85 w

//END
