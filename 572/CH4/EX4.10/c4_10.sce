//(4.10)   An industrial process discharges gaseous combustion products at 478K, 1 bar with a mass flow rate of 69.78 kg/s. As shown in Fig. E 4.10, a proposed system for utilizing the combustion products combines a heat-recovery steam generator with a turbine. At steady state, combustion products exit the steam generator at 400K, 1 bar and a separate stream of water enters at .275 MPa, 38.9C with a mass flow rate of 2.079 kg/s. At the exit of the turbine, the pressure is 0.07 bars and the quality is 93%. Heat transfer from the outer surfaces of the steam generator and turbine can be ignored, as can the changes in kinetic and potential energies of the flowing streams. There is no significant pressure drop for the water flowing through the steam generator. The combustion products can be modeled as air as an ideal gas. (a) Determine the power developed by the turbine, in kJ/s. (b) Determine the turbine inlet temperature, in C.

//solution 

//variable initialization
P1 = 1                      //pressure of industrial discharge in bar
T1 = 478                    //temperature of industrial discharge in kelvin
m1dot = 69.78               //mass flow rate of industrial discharge in kg/s
T2 = 400                   //temperature of exit products from steam generator in kelvin
P2 = 1                     //pressure of exit products from steam generator in bar
P3 = .275                  //pressure of water stream entering the generator in Mpa
T3 = 38.9                  //temperature of water stream entering the generator in degree celcius
m3dot = 2.079               //mass flow rate of water stream entering in kg/s
P5 = .07                   //exit pressure of the turbine in bars
x5 = .93                   //quality of turbine exit

//part (a)
m2dot = m1dot              //since gas and water streams do not mix
m5dot = m3dot              //--DO

//from table A-22,
h1 = 480.3                //in kj/kg
h2 = 400.98                //in Kj/kg

//from table A-2,
h3 = 162.9                //assumption: h3 = hf(T3), units in Kj/kg

//from table A-3
hf5 = 161                 //in kj/kg
hg5 = 2571.72             //in kj/kg

h5 = hf5 + x5*(hg5-hf5)
Wcvdot = m1dot*h1 + m3dot*h3 - m2dot*h2 - m5dot*h5

printf('the power developed by the turbine in kj/s is: \n\t Wcvdot = %f',Wcvdot)

//part(b)
P4 = P3                 //from the assumption that there is no pressure drop for water flowing through the steam generator
h4 = h3 + (m1dot/m3dot)*(h1 -h2)    //from steady state energy rate balance
//interpolating in table A-4, with these P4 and h4
T4 = 180                //in degree celcius
printf('\n\nturbine inlet temperature in degree celcius is :\n\t T4 = %f',T4)

























