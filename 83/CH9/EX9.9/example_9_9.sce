//Chapter 9
//Example 9.9
//page 362
//To find postfault currents and voltages
clear;clc;

disp("The Thevenin passive network for this system is drawn in Example_9_8 (or fig 9.28 in the textbook)");
disp("Using the Zbus matrix from the results of example_9_8,we can calculate post fault currents and voltages");
Zbus=%i*[0.1397059 0.1102941 0.125;0.1102941 0.1397059 0.125;0.125 0.125 0.175]

//to find fault current
V30=1;V10=1;V20=1;
If=(V30/(Zbus(3,3)+0));
printf('\nIf=-j%0.2f pu\n',abs(If));


//to find postfault voltages
V1f=V10-(Zbus(1,3)/Zbus(3,3));
V2f=V20-(Zbus(2,3)/Zbus(3,3));
printf('\nV1f=%0.3f',V1f);
printf('\nV2f=%0.3f',V2f);

//to find fault currents in the TL
I12f=(V1f-V2f)/(%i*0.1);
I13f=(V1f-0)/(%i*0.1);
I23f=(V2f-0)/(%i*0.1);
printf('\n\nI12f=%d',I12f);
printf('\nI13f=-j%0.2f',abs(I13f));
printf('\nI23f=-j%0.2f',abs(I23f));

//to find generator currents during faults
Eg1=1;Eg2=1;
Ig1f=(Eg1-V1f)/(0.2*%i+0.05*%i);
Ig2f=(Eg2-V2f)/(0.2*%i+0.05*%i);
printf('\n\nIg1f=-j%0.2f',abs(Ig1f));
printf('\nIg2f=-j%0.2f\n\n',abs(Ig2f));