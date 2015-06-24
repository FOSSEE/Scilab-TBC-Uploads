clc;
p1=1; // Atmospheric pressure in bar
T1=348; // Atmospheric temperature in kelvin
V1=800; // Volume of air sucked into the cylinder in cm^3
p2=15; // pressure of air after compression in bar
V2=V1/8; // volume of air after compression in cm^3
p3=50; // pressure of air after heat addition in bar
Cvo=0.7165; // Specific heat at constant volme in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
//   (a).Index of compression process
n=log (p2/p1)/log (V1/V2); // Index of compression process
disp ("which is less than 1.4. The compression process is polytropic.",n,"Index of compression process = ","(a).Index of compression process");
//   (b).Change in entropy of air during each process
m=(p1*10^2*V1*10^-6)/(R*T1); // Mass of air in cylinder
T2=T1*(p2/p1)*(V2/V1); // Temperature after compression
T3=T2*(p3/p2); // Temperature after heat addition
delta_s21=m*(Cvo*log (T2/T1)+R*log (V2/V1)); // change in entropy during compression
delta_s32=m*Cvo*log (T3/T2); //change in entropy during heat addition
disp ("kJ/K",delta_s32,"change in entropy during heat addition = (Error in textbook)","kJ/K",delta_s21,"change in entropy during compression = (Error in textbook)","(b).Change in entropy of air during each process");
//   (c).Heat transfer during polytropic compression process
k=1.4;// Index of isentropic preocess
Q=m*Cvo*((k-n)/(1-n))*(T2-T1); // Heat transfer during polytropic compression process
disp ("kJ",Q,"Heat transfer during polytropic compression process = (Error in textbook)","(c).Heat transfer during polytropic compression process");

