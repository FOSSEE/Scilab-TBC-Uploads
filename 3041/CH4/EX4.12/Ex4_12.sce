//Variable declaration

f = 1*10^6                  //radio frequency(Hz)
beta = 50                    //common emitter current gain 
fT = 5*10^6                 //short circuit current gain bandwidth product(Hz)

//Calculations
betaf = fT/f                 //measurement of short circuit current gain
fbeta = fT/beta              //frequency at beta(Hz)

//Results
printf ("frequency is %.f Hz",fbeta)
if fbeta<1*10^6 then
    printf ("transistor is not suitable for 1Mhz amplifier as fbeta is less than 1Mhz")
else
    printf ("transistor is suitable for 1Mhz amplifier")
end
    
