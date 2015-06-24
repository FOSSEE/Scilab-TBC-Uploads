//Fabrication and Thermal characteristics
//Example 3.5
Xa=40;//Ambient temperature//
P=300;//on state power loss in Watts//
Rjc=0.015;//junction_case thermal resistance//
Rsa=0.1;//sink_atmosphere thermal resistance//
Xj=105;//junction temperature//
Rcs=((Xj-Xa)/(P))-(Rjc+Rsa);//case_sink thermal resistance//
printf('value of case sink thermal resistance=%fc/w',Rcs);
