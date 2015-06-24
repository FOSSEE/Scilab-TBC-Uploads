clc
//initialization of variables
Pi=750 //lb/in^2
g=1.25
TA=2 //in^2
r=3
//calculations
Fstar=(g+1)*(2/(g+1))^5 *TA*750
Me=2.45
Fratio=(1+g*Me^2)/(Me*(sqrt(4.5+ (g^2 -1)*Me^2)))
F2=Fratio*Fstar
Pratio=(1+ 0.2*Me^2)^5
Fnstar=Fratio-((g+1)/2)^5 *r/(Pratio*2.25)
Fn=Fnstar*Fstar
//results
printf("Internal rocket thrust = %d lb",F2)
printf("\n External thrust = %d lb",Fn)
//The calculation for Fstar in textbook is wrong
