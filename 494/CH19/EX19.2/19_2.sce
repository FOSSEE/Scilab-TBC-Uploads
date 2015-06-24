//All the quantities are expressed in SI units

//from ex 18.2
Re_c_star = 3.754e7;                //Reynolds number at the trailing edge of the plate
rho_star = 0.574;
ue = 1000;                          //velocity of the upper plate
S = 40;                             //plate planform area

//from eq.(19.3) we have
Cf_star = 0.074/Re_c_star^0.2;

//hence, for one side of the plate
D_f = 1/2*rho_star*ue^2*S*Cf_star;

//the total drag on both the surfaces is
D = 2*D_f;

printf("\nRESULTS\n---------\nThe total frictional drag is:\n        D = %5.0f N\n",D)