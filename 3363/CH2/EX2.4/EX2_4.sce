//Example 2.4, page 57
clc
disp('Part a')
h=6.63*10^-34//Joule-sec
c=3*10^8//m/sec
m_o=9.11*10^-31//in kg

delta_h=(h*(1-cosd(90)))/(m_o*c)
printf("\n Compton shift is %e m",delta_h)
disp('Part b')
delta1=1*10^-10
K=(h*c*delta_h)/(delta1*(delta1+delta_h))
printf("\n X-ray beam is  %e Joule",K)
delta2=1.88*10^-12
K=(h*c*delta_h)/(delta2*(delta2+delta_h))
printf("\n X-ray beam is  %e Joule",K)
disp('Part c')
E1=(h*c)/delta1
E1_ev=(6.241509*10^18)*E1
printf("\n X-ray energy is  %f ev",E1_ev)
E2=(h*c)/delta2
E2_ev=(6.241509*10^18)*E2
printf("\n X-ray energy is  %f ev",E2_ev)
Per1=(100*.295*10^3)/E1_ev
Per2=(100*378*10^3)/E2_ev
printf("\n Energy lost in percentage  %f ",Per1)
printf("\n Energy lost in percentage  %f ",Per2)
