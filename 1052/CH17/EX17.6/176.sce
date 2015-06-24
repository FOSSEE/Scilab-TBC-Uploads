clc;
//Example 17.6
//page no 214
printf("\n Example 17.6 page no. 214\n\n");
//the total head developed by a centrifugal pump is given by a equation 
//hc=42-0.0047*q^2
//the pump is to be used in a water flow system in which the pump head in feet of water is given by eq.
//hp=12+0.0198*q^2
//for cal. flow rate hc=hp
q=35//from condition hc=hp,gpm
 hc=42-0.0047*q^2//total head
 printf("\n total head hc=%f ft of water",hc);
rho=62.40//density
q_c=0.078//flow rate in cfs unit
m_dot=rho*q_c//mass flow rate
printf("\n m_dot mass flow rate =%f lb/s",m_dot);
W_dot=m_dot*hc//fluid power requirement can be calculated
printf("\n fluid power requirement W_dot=%f lbf.ft/s",W_dot);
neta=.6//efficiency
W_dot_hp=.32//fluid power requirement in hp
bhp=W_dot_hp/neta//brake horse power
printf("\n brake horse power bhp=%f bhp",bhp);
