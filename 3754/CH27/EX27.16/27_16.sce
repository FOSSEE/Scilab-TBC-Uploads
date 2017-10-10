clear//

//Variables 

no = 0.6                  //efficiency 
Pcdc = 2.5                //Maximum collector dissipation of each transistor (in watt)

//Calculation

PT = 2 * Pcdc            //Total power dissipation of two transistors (in watt)
Pindc = PT / (1 - no )   //dc input power (in watt)
Poac = no * Pindc        //ac output power (in watt)     

//Result

printf("\n The d.c. input power is  %0.3f  W.\nThe a.c. output power is  %0.3f  W.",Pindc,Poac)
