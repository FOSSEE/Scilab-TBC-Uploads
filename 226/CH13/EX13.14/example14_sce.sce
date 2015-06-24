//chapter 13
//example 13.14
//page 580
printf("\n")
printf("given")
hfe=100;hie=2*10^3;R4=100;R1=5.6*10^3;R6=2.2*10^3;
Zi=hie+(1+hfe)*R4
disp("open loop current gain")
Ai=(hfe*hfe*R1)/(R1+Zi)
B=R4/(R4+R6)
disp("closed loop gain")
Acl=Ai/(1+Ai*B)
Zi=hie/(1+Ai*B)