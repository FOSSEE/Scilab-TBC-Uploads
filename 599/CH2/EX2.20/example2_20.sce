
clear;
clc;
printf("\t Example 2.20\n");
                      //this is the case of equimolar counter diffusion as the latent heat of vaporisation are very close to each other

T=(360);                            //temperature  in kelvin
pt=372.4/760;                       //total pressure in atm
R=82.06;                           //universal gas constant
Dab=0.0506;                        //diffusion coefficient in cm^2/s 
z=0.254;                          //gas layer thickness in cm
vp=368/760;                      //vapour pressure of toluene in atm
xtol=.3;                        //mole fractoin of toluene in atm
pb1=xtol*vp;                   //partial pressure of toluene
//since pb1 is .045263 bt in book it is rounded to 0.145
pb2=xtol*pt;                  //parial pressure of toluene in vapour phase
Na=Dab*(pb1-pb2)/(z*R*T);    //diffusion flux 
printf("\n the diffusion flux of a mixture of benzene and toluene %f*10^-8 gmol/cm^2*s\n",Na/10^-8);
printf("\nthe negative sign indicates that the toluene is getting transferred from gas phase to liquid phase(hence the transfer of benzene is from liquid to gas phase)")
//end