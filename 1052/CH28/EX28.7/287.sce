clc;
//Example 28.7
//page no 435
printf("\n Example 28.7 page no 435\n\n")
//waste water treatment plant 
//we have  to compare the total nitrogen discharge from the watershed with that of the city 's sewage treatment plant
q_w=10//flow rate from waste water treatment plant
c=35//nitoren concentration,mg/l
m_dot_w=c*q_w*8.34//discharge   from the treatment plant
printf("\n fdischarge from the treatment plant m_dot_w=%f lb/day",m_dot_w);
S=8//area of watershed,mi^2 
r=0.06//rate of rainfall,ml/day
n=.5//50% rain reaches the sewers
q=n*r*S*(5280^2/(3600*12))//volumetric flow rate of the runoff
c_r=9//tota; nitrogen conentration in runoff,mg/l
rho=62.4///density of water
m_r=q*c_r*1e-6*(3600*24)*rho//total nitrogen discharge  from runoff
printf("\n total nitrogen discharge m_r=%f lb/day ",m_r);
 //since the durinf rain ,the runoff is over 2.5 times that for the tratment plant
