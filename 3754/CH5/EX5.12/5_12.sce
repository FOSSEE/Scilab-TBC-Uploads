clear//

//Variables

VTH = 20.0 * 10**-3              //Thevenin's Voltage (in volts)
RTH = 300.0                      //Thevenin's Resistance (in ohm) 
RL = 300.0                       //Load Resistance (in ohm)

//Calculation

PL = (VTH/(RTH + RL))**2 * RL    //Power across load resistance (in watt)   

//Result

printf("\n The value of power transmitted to the receiver is  %0.2f  micro-watt.",PL*10**6)
