//Variable declaration
R1=10*10**3                       //resistance(k ohms)
C1=10**-6                         //capacitance(uF) 
C=0.1*10**-6                      //capacitance(uF) 
R=100*10**3                       //resistance(k ohms)   

//Calculations
//part b 
wc1=1/C1*R1                     //angular frequency(rad/s)
wc2=1/C*R                       //angular frequency(rad/s)
wc=wc2                      //angular frequency(rad/s)
wc1=wc2

//Results
printf ("wc1 is %.2f rad/s",wc1/1E+10)
printf ("wc2 is %.2f rad/s",wc2/1e+10)
