// Chapter 7_The pn junction Diode
//Caption_pn Junction current
//Ex_2//page 258
e = 1.6*10^-19;
Na=10^16    //acceptor impurity
Nd=10^16    // donor impurity
ni=1.5*10^10     //intrinsic concentration
Dn=25
Dp=10
tau_po=5*10^-7
tau_no=5*10^-7
epsr=11.7
Js=e*ni^2*((1/Na*(Dn/tau_no)^0.5)+(1/Nd)*(Dp/tau_po)^0.5)*10^9
printf('Ideal reverse saturation current density is %f nA/cm',Js)