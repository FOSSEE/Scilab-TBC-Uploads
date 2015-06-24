// chapter 6
// example 6.6
// fig. 6.21
// Determine variuos parameters
// page-288-290
clear;
clc;
// given
Erms=230; // in V (voltage supply)
alpha=%pi/3; // in degree (firing angle)
Id=4; // in A (load current)
// calculate
Em=Erms*sqrt(2); // calculation of rms voltage
Edc=(2*Em/%pi)*cos(alpha); // calculation of dc output voltage
Pi=(2*Em/%pi)*Id*cos(alpha); // calculation of active power input
Qi=(2*Em/%pi)*Id*sin(alpha); // calculation of reactive power input
R=Edc/Id; // calculation of load resistance
Edc_1=(Em/%pi)*(1+cos(alpha)); // calculation of dc output voltage when free wheeling diode is connected
Id_1=Edc_1/R;
I1=(2*sqrt(2)*Id_1/%pi)*cos(alpha/2); // calculation of fundamental value of alternating current
Pi_1=(Erms*I1)*cos(alpha/2); // calculation of active input power input when free wheeling diode is connected
Qi_1=(Erms*I1)*sin(alpha/2); // calculation of reactive power input when free wheeling diode is connected
Edc_2=Em/(2*%pi)*(1+cos(alpha)); // calculation of dc output voltage when SCR3 is damaged
Id_2=Edc_2/R; // calculation of dc output current when SCR3 is damaged
printf("\nThe dc output voltage is \tEdc=%.2f V",Edc);
printf("\nThe active power input is \tPi=%.2f W",Pi);
printf("\nThe reactive power input is \tQi=%.2f Vars",Qi);
printf("\nThe load resistance is \t\tR=%.2f ohm",R);
printf("\n\nWhen free wheeling diode is connected\n");
printf("\n\tThe dc output voltage is \tEdc=%.2f V",Edc_1);
printf("\n\tThe dc output current is \tIdc=%.f V",Id_1);
printf("\n\tThe fundamental value of alternating current is \tI1=%.2f A",I1);
printf("\n\tThe active power input is \tPi=%.2f W",Pi_1);
printf("\n\tThe reactive power input is \tQi=%.f Vars",Qi_1);
printf("\n\nWhen SCR3 is damaged\n");
printf("\n\tThe dc output voltage is \tEdc=%.2f V",Edc_2);
printf("\n\tThe dc output current is \tIdc=%.f A",Id_2);
