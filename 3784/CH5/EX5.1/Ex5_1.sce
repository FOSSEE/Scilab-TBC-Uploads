clc 
//Variable Initilisation
Ns=1500 //Speed of Squirrel Cage Induction Motor in RPM
N1=1460 //Speed of Squirrel Cage Induction Motor in RPM
N2=1350 //Speed of Squirrel Cage Induction Motor in RPM

// At 1460 rpm the speed slip is given by 
S1=(Ns-N1)/Ns //Slip
I=(sqrt(1/3)*(2/3))/(sqrt(S1)*(1-S1))
// At 1350 rpm the speed slip is given by
S2=(Ns-N2)/Ns //Slip
I1=(sqrt(1/3)*(2/3))/(sqrt(S2)*(1-S2))


//Results
printf('\n\n The motor maximum Current in terms of rated current at the above speed =%0.1f \n\n',I)
printf('\n\n The motor maximum Current in terms of rated current at the above speed =%0.1f \n\n',I1)
