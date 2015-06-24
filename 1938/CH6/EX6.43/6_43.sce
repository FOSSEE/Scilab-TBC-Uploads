clc,clear
printf('Example 6.43\n\n')

V_l=6.6*10^3
V_t=V_l/sqrt(3)
X_d=23.2,X_q=14.5,R_a=0 //armature resistance and synchronous reactance of direct,quadrature axis
VA=1800*10^3
phi=acos(0.8) //lag

I_a=VA/(V_l*sqrt(3))

psi=atan(  (V_t*sin(phi)-I_a*X_q)/(V_t*cos(phi)-I_a*R_a)  ) //minus sign in numerator and denomenator for motors
delta=psi+phi
I_d=I_a*sin(psi)
I_q=I_a*cos(psi)
E_f=V_t*cos(delta)-I_d*X_d-I_q*R_a
printf('Excitation emf = %.4f V\n',E_f)
//P_m= ( V_t*E_f*sin(delta)/X_d  ) + ((1/X_q)-(1/X_d))*0.5*sin(2*delta)*V_t^2
//P_m=0.4996*cos(delta)+0.1877*sin(2*delta)
//for maximum power output, differenciate and equate to zero

delta_max=63.4 //degree

P_m_max=((1/X_q)-(1/X_d))*0.5*sind(2*delta_max)*V_t^2   //Maximuum load supplied with E_f=0
printf('Maximum load the motor can supply is %.4f MW per phase ',P_m_max*10^-6      )
