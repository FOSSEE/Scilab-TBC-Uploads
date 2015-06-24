//Variable declaration
vo1=5                  //say (V)
K=25                   //proportionality constant  
Q=250                  //volume of fluid passed across metering point(cm^3) 
R1=2.5                  //output resistance(k ohms)

//Calculations
C1=(K*Q)/(R1*vo1)     //capacitor(nF)

//Results
printf ("C1 is %.f uF",C1/1E+1)
printf ("vo1 is -5 V when Q=250 cm^3")
