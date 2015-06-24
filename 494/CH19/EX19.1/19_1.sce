//All the quantities are expressed in SI units

//(a)
Re_c = 1.36e7;                    //as obtained from ex. 18.1a
rho_inf = 1.22;                   //freestream air denstiy
S = 40;                           //plate planform area

//hence, from eq.(19.2)
Cf = 0.074/Re_c^0.2;

V_inf = 100;

//hence, for one side of the plate
D_f = 1/2*rho_inf*V_inf^2*S*Cf;

//the total drag on both the surfaces is
D = 2*D_f;

printf("\nRESULTS\n---------\nThe total frictional drag is:\n(a)\n        D = %4.0f N\n",D)

//(b)
Re_c = 1.36e8;                    //as obtained from ex. 18.1b

//hence, from fig 19.1 we have
Cf = 1.34e-3;

V_inf = 1000;

//hence, for one side of the plate
D_f = 1/2*rho_inf*V_inf^2*S*Cf;

//the total drag on both the surfaces is
D = 2*D_f;

printf("\n(b)\n        D = %5.0f N\n",D)