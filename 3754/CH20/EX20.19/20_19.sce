clear//

//Variables

VS = 25.0                  //Source voltage (in volts)
VZ = 15.0                  //Zener voltage (in volts)
RL = 1.0                   //Load resistance (in kilo-ohm)
VBE = 0.7                  //Emitter-to-Base voltage (in volts)  

//Calculation

Vout = VZ/2 + VBE          //Output voltage (in volts)
IL = Vout / RL             //Load current (in milli-Ampere)
IE1 = IL                   //Current (in milli-Ampere)
VCE1 = VS - Vout           //Collector-To-Emitter voltage (in volts)
P1 = VCE1 * IE1            //Power dissipated (in watt)

//Result

printf("\n Vout is  %0.3f  V.\nIL is  %0.3f  mA.\nIE1 is  %0.3f  mA.\nP1 is  %0.3f  W.",Vout,IL,IE1,P1)
