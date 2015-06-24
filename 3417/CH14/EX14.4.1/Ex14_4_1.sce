//Ex.14.4.1.;Calculate the efficiency of the generator and also compare with the carnot efficiency

//cathode work funtion 
flux_c=2.5;//unit=volts
//anode work funtion 
flux_a=2;//unit=volts
//Temp. of cathode
Tc=2000;//unit=degree k
//Temp. of surrounding
Ts=1000;//unit=degree k
//plasma potentail drop
flux_p=0.1;//unit=volts
//Net output voltage
V=flux_c-flux_a-flux_p
printf(" V=%f volt",V);
//charge of an electron
e=1.6*10^-19;//unit=coulomb
//boltzmann constant
k=1.38*10^-23;//unit=joule/degree kelvin
A=1.20*10^6;
//one electron volt=1.6*10^-19 joule
//The net current in the generator J=J_cathode-J_anode
//let EC=e^(-flux_c/k*Tc)
EC=%e^[-(1.6*10^-19*flux_c)/(k*Tc)];
J_cathode=A*(Tc*Tc)*EC;//J_cathode=A*Tc^2*e^(-flux_c/k*Tc)
printf("\n J_cathode=%f amp/m^2",J_cathode);
//let EA=e^(-flux_c/k*Ts)
EA=%e^[-(1.6*10^-19*flux_a)/(k*Ts)];
J_anode=A*(Ts^2)*EA;//J_cathode=A*Ts^2*e^(-flux_c/k*Ts)
printf("\n J_anode=%f amp/m^2",J_anode);
//The net current can be taken =Jc,as Ja can be neglected in comparison with Jc
J=J_cathode;
printf("\n J=%f amp/m^2",J);
//The heat supplied to the cathode Qc/Ac=J(flux_c+((2*k*Tc)/e))+samestion of sigma*(Tc^4-Ts^4)
//let QA=Qc/Ac; and
a=2.5+((2*1.38*10^-23*2000)/(1.6*10^-19));
b=J*a;
c=(0.2*5.67*(10^-12)*(10^-4)*((2000^4)-(1000^4)));
//therefore
QA=b+c; //since: QA=(J*(2.5+((2*(1.38*10^-23)*2000*)/(1.6*10^-19))))+(0.2*5.67*(10^-12)*(10^-4)*((2000^4)-(1000^4)))
printf("\n The heat supplied to the cathode Qc/Ac=%f watt/m^2",QA);
//efficiency of the generator
ng=((J*V)/(7.026*10^6))*100;
printf("\n ng=%f persent",ng);
//carnot efficiency this device
T1=2000;
T2=1000;
T=2000;
nc=((T1-T2)/T)*100;
printf("\n nc=%f persent",nc);


//Value of "The heat supplied to the cathode Qc/Ac" is given wrong
//value of charge e is taken wrong;corrected by giving value 1.6*10^-19
//value of J anode is differ from calculated value. 
