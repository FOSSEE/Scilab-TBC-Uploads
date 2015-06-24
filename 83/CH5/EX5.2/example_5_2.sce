//Chapter 5
//Example 5.2
//page 134
//To find voltage at the bus at the power station end
clc;clear;

base_MVA=5;
base_kV=33;
pf=0.85;
cable_impedance=(8+%i*2.5);
cable_impedance=cable_impedance*base_MVA/(base_kV^2);

transf_imp_star=(0.06+%i*0.36)/3; //equivalent star impedance of winding of the transformer
Zt=(transf_imp_star*5/(6.6^2))+((0.5+%i*3.75)*5/(33^2));
total=cable_impedance+2*Zt;

load_MVA=1;
load_voltage=6/6.6;
load_current=1/load_voltage;

Vs=load_voltage+load_current*(real(total)*pf+imag(total)*sin(acos(pf)));
Vs=Vs*6.6;
printf('\n\nCable impedance= (%0.3f+j%0.4f) pu\n',real(cable_impedance),imag(cable_impedance));
printf('\nEquivalent star impedance of 6.6kV winding of the transformer =(%0.2f+j%0.2f) pu\n',real(transf_imp_star),imag(transf_imp_star));
printf('\nPer unit transformer impedance,Zt=(%0.4f+j%0.3f) pu\n',real(Zt),imag(Zt));
printf('\nTotal series impedance=(%0.3f+j%0.3f) pu\n',real(total),imag(total));
printf('\nSending end Voltage =|Vs|=%0.2fkV (line-to-line)',Vs);

