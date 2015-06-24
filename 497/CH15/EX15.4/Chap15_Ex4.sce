//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-15, Example 4, Page 380
//Title: Circulation in Side-by-Side Beds
//==========================================================================================================

clear
clc

//INPUT
Fs=600;//Solid circulation rate in kg/s
dpbar=60;//Mean size of solids in micrometer
pA=120;//Pressure in vessel A in kPa
pB=180;//Pressure in vessel B in kPa
LfA=8;//Bed height in vessel A in m
LfB=8;//Bed height in vessel B i m
//Bulk densities in kg/m^3
rho12=100;
rho34=400;
rho45=550;
rho67=200;
rho78=200;
rho910=400;
rho1011=400;
rho1112=550;
rho13=100;
deltapdA=7;//Pressure drop across the distributor in regenerator in kPa
deltapdB=8;//Pressure drop across the distributor in reactor in kPa
deltap12=(9+4);//Friction loss and pressure difference required to accelerate the solids in transfer lines in kPa
deltap78=(15+3);//Friction loss and pressure difference required to accelerate the solids in transfer lines in kPa
deltap45=20;//Friction loss across the reactor's stripper downcomer in kPa
deltap1112=4;//Friction loss across the regenerator's downcomer in kPa
deltapvA=5;//Pressure drop assigned for the control valve in regenerator in kPa
deltapvB=15;//Pressure drop assigned for the control valve in reactor in kPa
deltah12=15;//Height of the riser in m
deltah86=30;//Height of the riser in m
deltah1011=7;//Height difference h10-h11 in m
g=9.81;//Acceleration due to gravity in m/s^2
gc=1;//Conversion factor
pi=3.14;

//CALCULATION
Gs=900;//From Fig.(8), to find dt
dt=sqrt((4/pi)*Fs/Gs);//Diameter of the downcomer
//Height of downcomer A from Eqn.(7)
deltahA=(1/(rho1112*g))*[(pB-pA)*gc*(10^3)+(deltap12+deltapdB+deltap1112+deltapvA)*gc*10^3-rho12*g*(-deltah12)-rho34*g*(-LfB)-rho1011*g*deltah1011];
//Height of downcomer B from Eqn.(8)
deltahB=(1/(rho45*g))*[-(pB-pA)*gc*10^3+(deltap45+deltapvB+deltap78+deltapdA)*gc*10^3+rho78*g*deltah86+rho910*g*LfA];

//OUTPUT
printf('\nHeight of downcomer for:');
mprintf('\n\tRegenerator:%fm',deltahA);
mprintf('\n\tReactor:%fm',deltahB);

//====================================END OF PROGRAM ======================================================