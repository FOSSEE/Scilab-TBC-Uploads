// Example 16_8
clc;funcprot(0);
// Given data
D_exit=0.0938;// in
T_os=70.0;// °F
p_osi=50.0;// psia
V_T=1.00;// ft^3
k=1.40;// The specific heat ratio

// Calculation
// (a)
p_r1=(2/(k+1))^(k/(k-1));// The pressure ratio
p_exit=14.7;// psia
p_exitbyp_os=p_exit/p_osi;// The pressure ratio
// (b)
p_os=p_exit/p_r1;// psia
p_os=p_os*0.472;// psig
// (c)
A_a=(%pi*D_exit^2)/(4*144);// ft^2
tau=31.95*log(p_osi/(p_os/0.472));// s
printf("\n(a)p_exit/p_os=%0.3f,which is <0.528 therefore, initially, the flow is choked.\n(b)The flow remains choked until the tire deflates to a pressure of p_os=%2.1f psig \n(c)The valve stem unchokes at time,tau=%2.1f s",p_exitbyp_os,p_os,tau);
