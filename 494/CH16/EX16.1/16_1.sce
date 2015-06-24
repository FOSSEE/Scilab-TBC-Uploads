//All the quantities are expressed in SI units

mue = 1.7894e-5;                    //coefficient of viscosity
ue = 60.96;                         //velocity of upper plate
D = 2.54e-4;                        //distance between the 2 plates
T_w = 288.3;                        //temperature of the plates
Pr = 0.71;                          //Prandlt number
cp = 1004.5;                        //specific heat at constant pressure

//(a)
//from eq.(16.6)
u = ue/2;

//(b)
//from eq.(16.9)
tow_w = mue*ue/D;

//(c)
//from eq.(16.34)
T = T_w + Pr*ue^2/8/cp;

//(d)
//from eq.(16.35)
q_w_dot = mue/2*ue^2/D;

//(e)
//from eq.(16.40)
T_aw = T_w + Pr/cp*ue^2/2;

printf("\nRESULTS\n---------\n(a)\n        u = %2.2f m/s\n(b)\n        tow_w = %1.1f N/m2\n(c)\n        T = %3.1f K\n(d)\n        q_w_dot = %3.1f Nm-1s-1\n(e)\n        Taw = %3.1f K",u,tow_w,T,q_w_dot,T_aw)
