clc,clear
printf('Example 6.36\n\n')

V_L=11000
V_ph=V_L/sqrt(3)
VA=2*10^6,phi=acos(0.8)
I_FL=VA/(sqrt(3)*V_L)
phi_1=acos(0.8)
IX_s=(20/100)*V_ph //product of I and X_s
X_s=IX_s/I_FL
I_1=I_FL
BC=I_1*cos(phi_1)*X_s
AB=I_1*sin(phi_1)*X_s    , OA=V_ph
OC=sqrt( (OA+AB)^2+(BC)^2 ) ,E_1=OC
E_2=1.25*E_1,OE=E_2
DE=BC
AD=sqrt(OE^2-DE^2) -OA           //because OE=sqrt( (OA+AD)^2 + (DE)^2  )

I_2sinphi2=AD/X_s
I_2cosphi2=I_1*cos(phi)
I_2=sqrt( (I_2cosphi2)^2 + (I_2sinphi2)^2  )
phi2=atan( I_2sinphi2/ I_2cosphi2 )
new_pf=cos(phi2)

printf('Machine current is %.2f A \n',I_2)
printf('Power factor is  %.4f lagging',new_pf)
