//acids and bases//
//example 2.17//
V=10;//volume of water in litres//
N1=0.10;//moles of HCN added in solution//
N2=0.10;//moles of NaCN added in solution//
K=7.2*10^-10;//dissociation constant of HCN//
CN=0.1;//CN- concentration//
HCN=0.1;//HCN concentration//
H1=K*HCN/CN;
H=H1/10^-10;
k=1*10^-14;//ionization constant of water//
printf("H+ concentration in the solution is %f*10^-10",H);
OH=k/H1;
OH=OH/10^-5;
printf("\nOH- concentration in the solution is %f*10^-5",OH);