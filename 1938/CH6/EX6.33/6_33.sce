clc,clear
printf('Example 6.33\n\n')
//note that a new function p2z has been defined below for direct representation of complex numbers in polar form
function [FUN] = p2z(RRRR,Theeeta)
 FUN = RRRR.*exp(%i*%pi*Theeeta/180.);
endfunction

Z1=complex(0,2)
Z2=complex(0,3)
Z=6
E1=p2z(230,0)
E2=p2z(230,10)

I1=((E1-E2)*Z+E1*Z2)/(Z*(Z1+Z2)+Z1*Z2)
I2=((E2-E1)*Z+E2*Z1)/(Z*(Z1+Z2)+Z1*Z2)

phi1=phasemag(I1)  //Phasemag returns the angle of complex number in degrees
phi2=phasemag(I2)  //Phasemag returns the angle of complex number in degrees

I=I1+I2
V=I*Z //Terminal voltage
printf('(i) Terminal voltage is %.2f volts at %.1f degrees\n',abs(V),phasemag(V))
printf('(ii) Currents are %.2f A at %.0f degrees and %.2f A at %.2f degrees\n     Total current is %.2f A at %.1f degrees  ',abs(I1),phasemag(I1),abs(I2),phasemag(I2),abs(I),phasemag(I))

P1=abs(V)*abs(I1)*cosd(phi1)
P2=abs(V)*abs(I2)*cosd(phi2)
printf('\n(iii)Power delivered %.2f watts and  %.2f watts',P1,P2)
