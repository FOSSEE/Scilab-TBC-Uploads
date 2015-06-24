// Chapter 7_The pn junction Diode
//Caption_Small signal admittance
//Ex_6//page 272
T=300
tau_po=10^-7
Ipo=0.001
Idq=0.001
Cd=10^9*(1/(2*0.0259))*(Ipo*tau_po)
rd=0.0259/(Idq)      //diffusion resistance
printf('Diffusion capacitance is %1.2f nF and diffusion resistance is %1.2f ohm',Cd,rd)