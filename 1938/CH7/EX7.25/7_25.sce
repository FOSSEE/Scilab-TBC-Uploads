clc,clear
printf('Example 7.25\n\n')

V_L=6.6*10^3,V_ph=V_L/sqrt(3)
P_in=900*10^3
R_a=0,X_s=20 //armature resistance and synchronous reactance 
Z_s=complex(R_a,X_s) //synchronous impedance
theta=phasemag(Z_s)*(%pi/180) //phasemag returns angle in degrees,not radians
E_b_L=8.6*10^3,E_bph=E_b_L/sqrt(3) 

//refer to phasor diagram
OA=V_ph, AB=E_bph //OB= E_Rph

I_a_cosphi=P_in/(sqrt(3)*V_L)  //I_a*cos(phi)
BC=I_a_cosphi*abs(Z_s) //BC is a vector in phasor diagram

OC=sqrt(AB^2 -BC^2  )- OA  //from phasor diagram
I_a_sinphi=OC/abs(Z_s)  //product of I_a and sin(phi)
phi= atan (I_a_sinphi/I_a_cosphi)
I_a=I_a_cosphi/cos(phi) //product of I_a and cos(phi)
printf('Motor current is %.3f A\n',I_a)
printf('Power factor of motor is %f leading',cos(phi))
printf('\n\nNote:There is slight mismatch in answer due to the approximation made during I_a* sin(phi) calculation')
