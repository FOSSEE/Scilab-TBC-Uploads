clc
weight=25000 //Kg
A=2 //sq.in
alphaS=6.5*10^(-6) //in/in/F
alphaB=11.2*10^(-6) //in/in/F
Es=30*10^6 //psi
Eb=15*10^6 //psi
disp("From the figure, DeltaTs+DeltaPs=DeltaTb")
deltaT=weight/(Es*A*(alphaB-alphaS))
printf("Net temperature drop=%f F",deltaT)
