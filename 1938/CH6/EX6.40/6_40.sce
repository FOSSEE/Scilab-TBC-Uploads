clc,clear
printf('Example 6.40\n\n')

V_L=22000
V_ph=V_L/sqrt(3)
power=230*10^6
phi=acos(1)
I_FL=power/(sqrt(3)*V_L*cos(phi))
I_1=I_FL
X_s=1.2

E_1=sqrt( V_ph^2 + (I_1*X_s)^2 )
E_2=1.3*E_1
AC=  sqrt( E_2^2-(I_1*X_s)^2  )   -V_ph     // because E^2=(V_ph+AC)^2+(I_1*X_s)^2
I2X_S=AC

I_2cosphi2=I_1  //because phi_2=acos(I_1/I_2) //from ACD
I_2sinphi2=AC/X_s
I_2=sqrt( (I_2cosphi2)^2 + (I_2sinphi2)^2  )
phi2=atan( I_2sinphi2/ I_2cosphi2 )
new_pf=cos(phi2)

printf('Machine current is %.2f A \n',I_2)
printf('Power factor is  %.4f and lagging',new_pf)
