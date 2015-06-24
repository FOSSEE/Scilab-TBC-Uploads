//Chapter 9
//Example 9.6
//page 352
//To calculate short circuit solution using algorithm for short circuit studies
clear;clc;

Y11=1/(0.15*%i)+1/(0.15*%i)+1/(0.1*%i)+1/(0.2*%i);
Y12=-1/(0.2*%i);
Y21=Y12;
Y13=-1/(0.15*%i);
Y31=Y13;
Y14=-1/(0.1*%i);
Y41=Y14;
Y22=1/(0.15*%i)+1/(0.15*%i)+1/(0.1*%i)+1/(0.2*%i);
Y23=-1/(0.1*%i);
Y32=Y23;
Y24=-1/(0.15*%i);
Y42=Y24;
Y33=1/(0.15*%i)+1/(0.1*%i);
Y34=0;
Y43=Y34;
Y44=1/(0.15*%i)+1/(0.1*%i);

//Ybus matrix can be written as

Ybus=[Y11 Y12 Y13 Y14;Y21 Y22 Y23 Y24;Y31 Y32 Y33 Y34;Y41 Y42 Y43 Y44];

Zbus=inv(Ybus);

//preault voltages
V10=1;V20=1;V30=1;V40=1;

//post fault voltages
V1f=V10-(Zbus(1,4)/Zbus(4,4))*V40;
V2f=V20-(Zbus(2,4)/Zbus(4,4))*V40;
V3f=V30-(Zbus(3,4)/Zbus(4,4))*V40;
V4f=V40-(Zbus(4,4)/Zbus(4,4))*V40;

//to calculate fault current through Zf=0
If=V40/(Zbus(4,4)+0);

//short circuit current in lines 1-3,1-2,1-4,2-4 and 2-3

I13f=(V1f-V3f)/(0.15*%i);
I12f=(V1f-V2f)/(0.2*%i);
I14f=(V1f-V4f)/(0.1*%i);
I24f=(V2f-V4f)/(0.15*%i);
I23f=(V2f-V3f)/(0.1*%i);

//If at all fault occurs on bus1 or bus2
If12=1/Zbus(1,1);

//displaying the results
printf('\n Ybus=');
disp(Ybus);

printf('\n Zbus=');
disp(Zbus);

printf('\nV1f= %0.4f pu',V1f);
printf('\nV2f= %0.4f pu',V2f);
printf('\nV3f= %0.4f pu',V3f);
printf('\nV4f= %0.1f pu\n',V4f);

printf('\nFault current=-j%0.5f pu\n',abs(If));

printf('\nI13f=j%0.3f pu',abs(I13f));
printf('\nI12f=j%0.3f pu',abs(I12f));
printf('\nI14f=-j%0.3f pu',abs(I14f));
printf('\nI24f=-j%0.3f pu',abs(I24f));
printf('\nI23f=-j%0.3f pu\n',abs(I23f));

printf('\n Fault current for a fault on bus 1 (or bus 2)\n If=-j%0.6f pu\n\n',abs(If12));