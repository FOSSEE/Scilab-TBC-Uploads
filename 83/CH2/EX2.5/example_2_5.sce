//Chapter 2
//Example 2.5
//page 63
//To find flux linkages with neutral and voltage induced in neutral
//To find voltage drop in each of three-phase wires

clear;clc;
Ia=-30+%i*50;
Ib=-25+%i*55;
Ic=-(Ia+Ib);

//(a) to find flux linkages with neutral and voltage induce in it
Dan=4.5;
Dbn=3;  //from figure
Dcn=1.5;
Phi_n=2*10^(-7)*(Ia*log(1/Dan)+Ib*log(1/Dbn)+Ic*log(1/Dcn));
Vn=%i*2*%pi*50*Phi_n*15000; //voltage induced for 15km long TL
Vn=abs(Vn) ;
printf("\nFlux linkages of the neutral wire = %f Wb-T/m\n\n",Phi_n);
printf("Voltage induced in the neutral = %d\n\n",Vn);

//(b) to find voltage drop in each phase
Phi_a=2*10^(-7)*(Ia*log(1/(0.7788*0.005))+Ib*log(1/1.5)+Ic*log(1/3));
Phi_b=2*10^(-7)*(Ib*log(1/(0.7788*0.005))+Ia*log(1/1.5)+Ic*log(1/1.5));
Phi_c=2*10^(-7)*(Ic*log(1/(0.7788*0.005))+Ib*log(1/1.5)+Ia*log(1/3));

delta_Va=%i*2*%pi*50*Phi_a*15000; //like we did for neutral voltage
delta_Vb=%i*2*%pi*50*Phi_b*15000;
delta_Vc=%i*2*%pi*50*Phi_c*15000;

printf("The Voltage drop of phase a(in volts) =");disp(delta_Va);
printf("\n\nThe Voltage drop of phase b(in volts) =");disp(delta_Vb);
printf("\n\nThe Voltage drop of phase c(in volts) =");disp(delta_Vc);

