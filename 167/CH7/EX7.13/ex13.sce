//ques13
//Work Input for Various Compression Processes
clear
clc
//(a) Isentropic compression with k=1.4
k=1.4;//isentropic ratio
R=0.287;//gas constant for water in kJ/K/mol/kg
T1=300;//initial temp in K
P2=900;//final pressure in kPa
P1=100;//initial pressure in kPa
w=k*R*T1/(k-1)*((P2/P1)^((k-1)/k)-1);//work done in compression in kJ/kg
printf('(a) Work done in compression = %.1f kJ/kg \n',w);

//(b)Polytropic compression with k=1.3
w=k*R*T1/(k-1)*((P2/P1)^((k-1)/k)-1);
printf(' (b) Work done in compression = %.1f kJ/kg \n',w);

//(c) Isothermal compression
w=R*T1*log(P2/P1);
printf(' (c) Work done = %.1f kJ/kg \n',w);

//(d) Ideal two stage compression with intercooling with a polytropic exponent of 1.3
Px=(P1*P2)^(1/2);//pressure in kPa
//the total compressor work is twice the compression work for a single stage
w=2*k*R*T1/(k-1)*((Px/P1)^((k-1)/k)-1);
printf(' (d) Work done = %.2f kJ/kg \n',w);