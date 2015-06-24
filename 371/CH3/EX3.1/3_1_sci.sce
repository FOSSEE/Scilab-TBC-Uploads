//Fabrication and Thermal characteristics
//Example 3.1
Xa=50;//Ambient temperature//
P=150;//on state power loss in Watts//
Rjc=0.02;//junction_case thermal resistance//
Rcs=0.05;//case_sink thermal resistance//
Rsa=0.08;//sink_atmosphere thermal resistance//
Xj=Xa+P*(Rjc+Rcs+Rsa);//junction temperature//
printf('value of junction temperature=%fc',Xj);
