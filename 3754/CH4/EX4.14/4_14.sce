clear//

//Variables

PR1 = 1.0/8             //1/8 watt resistor (in watt)
PR2 = 1.0/4             //1/4 watt resistor (in watt)
PR3 = 1.0/2             //1/2 watt resistor (in watt)
RT = 2400.0             //total resistance  (in ohm)

//Calculation

PT = PR1 + PR2 + PR3    //Total power dissipated (in watt)
I = (PT/RT)**0.5        //Current (in Ampere)
Vs = I * RT             //Applied voltage (in volts)
R1 = PR1 / I**2         //R1 resistor (in ohm) 
R2 = PR2 / I**2         //R2 resistor (in ohm)
R3 = PR3 / I**2         //R3 resistor (in ohm) 

//Result

printf("\n Current in the circuit is  %0.3f  A.\nApplied Voltage is  %0.3f  V.\nValue of R1 is  %0.3f  ohm.\nValue of R2 is  %0.3f  ohm.\nValue of R3 is  %0.3f  ohm.",I,Vs,R1,R2,R3)
