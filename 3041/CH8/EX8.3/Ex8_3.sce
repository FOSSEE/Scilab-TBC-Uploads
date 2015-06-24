

//Variable declaration
C=0.01                     //capacitance(uF)
R2=15                      //resistance(k ohms)
Va2=4                      //voltage(V)
Vcc=15.                    //supply voltage(V)
R1=33                      //resistance(k ohms)

//Calculations
Va1=0.67*Vcc               //voltage(V)
Vamax=Va1+Va2              //Va maximum(V)
Vamin=Va1-Va2              //Va minimum(V)
T1max=C*(R1+R2)*(log((1-(Vamax/(2*Vcc)))/(1-(Vamax/Vcc))))   //time period(ms)
T1min=C*(R1+R2)*(log((1-(Vamin/(2*Vcc)))/(1-(Vamin/Vcc))))   //time period(ms)
T2=0.693*R2*C
fmax=1/(T1min+T2)                    //maximum frequency(K Hz)
fmin=1/(T1max+T2)                    //miniimum frequency(K Hz)

//Results
printf ("minimum freq is %.2f",fmin)
printf ("maximum freq is %.2f",fmax)
printf(" (solution given in the textbook is incorrect)");
