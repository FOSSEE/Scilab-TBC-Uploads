clc
S=5 //in
Al=6 //in
alphaS=6.5*10^(-6) //in/in/F
alphaAl=13.1*10^(-6) //in/in/F
Es=30*10^6 //psi
EAl=10*10^6 //psi
As=1 //in^2
AAl=2 //in^2
T=50 //F
dia=1 //in
disp("From the figure, it is evident that DeltaPs+DeltaPAl=DeltaTs+DeltaTAl")
P=(alphaS*S*12*T + alphaAl*Al*12*T)/(S*12/(Es*As) + Al*12/(EAl*AAl))
printf("Shearing force= %d lb",P)
T=P/(%pi*(dia/2)^2)
printf("\n The shear stress in the pin=%d psi",T)
