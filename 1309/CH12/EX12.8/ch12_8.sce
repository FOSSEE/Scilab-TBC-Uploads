clc;
clear;
printf("\t\t\tChapter12_example8\n\n\n");
// Determination of the net heat exchanged between the dish and the surroundings by radiation at the instant the dish is removed from the oven. Perform the calculations (a) if the dish and surroundings behave like black bodies, and again (b) if the dish has an emissivity of 0.82 and the surroundings have an emissivity of 0.93.
D=12/12; // diameter in ft
L=6/12; // length in ft
A=2*%pi*D^2/4+%pi*D*L;
printf("\nThe Surface area is %.2f sq.ft",A);
printf("\n\t\t\tSolution to part (a)\n");
F12=1; // the view factor between the dish and the surroundings is unity
T1=810;
T2=530;
sigma=0.1714e-8; // Stefan-Boltzmann constant
q1=sigma*A*(T1^4-T2^4)*F12;
printf("\nThe heat exchanged between the dish and the surroundings is %d BTU/hr",q1);
printf("\n\t\t\tSolution to part (b)\n");
// For gray-surface behavior, we can apply the following Equation
// q1/(A1e1)-[F11*(q1/A1)*(1-e1)/e1+F12*(q2/A2)*(1-e2)/e2]=sigma*T1^4-(F11*sigma*T1^4+F12*sigma*T2^4)... equation (1)
F11=0;
e1=0.82;
e2=0.93;
// putting q2/A2=0 in equation (1) as A2 tends to infinity
q1_=A*e1*[sigma*T1^4-F12*sigma*T2^4];
printf("\nThe heat exchanged between the dish and the surroundings for the second case is %d BTU/hr",q1_);
