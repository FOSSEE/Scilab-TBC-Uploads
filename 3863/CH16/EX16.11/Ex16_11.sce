clear
//
//Given
//Variable declaration
P=300e3     //Power transmitted in W
N=80        //speed of the shaft in r.p.m
tau=60      //Maximum shear stress in N/sq.mm

//Calculation
T=P*60/(%pi*2*N)*1e3                                 //Mean Torque transmitted in Nmm
Tmax=1.4*T                                               //Maximum Torque transmitted in Nmm
D=((16*Tmax/(%pi*tau))**(1/3))                //Suitable diameter of the shaft in mm

Do=(((Tmax*16)/(%pi*tau*(1-0.6**4)))**(1/3))  //External diameter of hollow shaft in mm

Di=0.6*Do                                                //Internal diameter of hollow shaft in mm

//Result
printf("\n External diameter of hollow shaft = %d mm",Do)

printf("\n Internal diameter of hollow shaft = %d mm",Di)

