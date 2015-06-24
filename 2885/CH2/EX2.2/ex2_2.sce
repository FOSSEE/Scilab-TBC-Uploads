//Determine the conductivity of extrinsic semiconductor
clear;
clc;
//soltion
//given
e=1.6*10^-19;//Coulomb        //charge of an electron
ni=1.5*10^16;//per m^3        //concentration
un=0.13;//m^2/Vs             //mobility of electron
up=0.05;//m^2/Vs            //mobility of holes
Si=5*10^28;//per m^3        //atomic density in silicon
dop=(1/(2*10^8));          //concentration of an antimony per silicon atoms
Nd=dop*Si;//per m^3       //donor concentraion
n=Nd;//per m^3           //free electron concentration
p=(ni^2/Nd);//per m ^3   // hole concentration
con=e*(n*un+p*up);
printf("The conductivty is %.1f S/m \n",con);
