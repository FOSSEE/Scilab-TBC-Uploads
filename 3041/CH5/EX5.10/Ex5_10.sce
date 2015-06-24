

//Variable declaration
P1=2                          //transistor power(W)
Rl=5*10**3.                   //load resistance()
Ic=35                         //collector current(mA)   

//Calculations
Bo=40-Ic                           
B1=sqrt((2*P1)/Rl)
B2=Bo
D2=(B2/B1)*100                //second harmonic distortion(%)

//Results
printf ("second harmonic distortion is %.2f %%",(D2/1E+3))
