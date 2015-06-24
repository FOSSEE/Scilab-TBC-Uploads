clc,clear
printf('Example 3.6\n\n')

P=4 //poles
f=50 //frequency
R= 0.25//resistance per phase of rotor 

N_1=1440 ;  N_2 =1200 //initial and final speed
N_s = 120*f/P //synchronous speed
S_1= (N_s - N_1)/N_s  //slip
S_2 = (N_s - N_2)/N_s //slip after adding resistance to rotor circuit

//S (prop.) R for constanct input power to rotor circuit
r = R * (S_2/S_1) - R  // external resistance per phase
printf('External resistance to be added per phase = %.0f ohm',r)
