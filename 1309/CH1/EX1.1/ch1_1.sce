clear;
clc;
printf("\t\t\tChapter1_Example1\n\n\n");
// determination of surface temperature on one side of a firewall
k=9.4; // thermal conductivity in [BTU/hr.ft. ˚Rankine]
q=6.3; // heat flux in [BTU/s. sq.ft]
T1=350; // the outside surface temperature of one aide of the wall [˚F]
// converting heat flux into BTU/hr  sq.ft
Q=6.3*3600 // [BTU/hr.sq.ft]
printf("\nThe heat flux is %.2f BTU/hr. sq.ft",Q);
dx=0.5; // thickness in [inch]
//converting distance into ft
Dx=0.5/12 // thickness in [ft]
printf("\nThe thickness of firewall is %.2f ft",Dx);
// solving for temeprature T2
T2=T1-(Q*Dx/k); // [˚F]
printf("\nThe required temperature on the other side of the firewall is %.1f degree Fahrenheit",T2);
