clc;
warning("off");
printf("\n\n example10.2 - pg407");
Nreold=1214;
T= 300l; // K
Uold=0.8810;
Nre=13700;
U=Uold*(Nre/Nreold);
Lbyd=744;
// using the newton raphson method to calculate the value of f from the equation - 1/(f^(1/2))=4*log(Nre*(f^(1/2)))-0.4
f=0.007119;
p=(0.88412-(0.92248*10^-3)*T)*10^3;  //[kg/m^3] - density
tauw=(1/2)*p*(U^2)*f;
deltap=tauw*(4)*(Lbyd);
d=0.03254/12;  //[ft]
L=Lbyd*d;
printf("\n\n Pressure drop is \n -deltap=%e N/m^2=%f kpa=130 psi",deltap,deltap*10^-3);  
printf("\n\n A pressure drop of 130 psi on a tube of length of %f ft is high and shows the impracticality of flows at high reynolds number in smaller tubes",L);