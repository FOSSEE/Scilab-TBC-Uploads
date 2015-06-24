//Fabrication and Thermal characteristics
//Example 3.3
Xa=35;//Ambient temperature//
P=150;//on state power loss in Watts//
Rjc=0.01;//junction_case thermal resistance//
Rcs=0.08;//case_sink thermal resistance//
Rsa=0.09;//sink_atmosphere thermal resistance//
Xj=Xa+P*(Rjc+Rcs+Rsa);//junction temperature//
printf('value of junction temperature=%fc',Xj);
