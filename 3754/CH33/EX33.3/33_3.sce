clear//

//Variables

RC = 250.0 * 10**-12                   //Time constance (in seconds)
Vomax = 50.0                           //Maximum output voltage (in volts)                         
tau = 0.05  * 10**-6                   //time (in seconds)

//Calculation

alpha = Vomax / RC                     //alpha (in volt per second)
Vp = alpha * tau                       //Peak voltage (in volts)

//Result

printf("\n The peak value of input voltage is  %0.3f  kV.",Vp * 10**-3)
