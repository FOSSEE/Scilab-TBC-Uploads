
clear;
clc;
printf("\t Example 3.9\n");
Cas=1.521*10^-7;
v=1525;       //velocity in m/s
D=0.0516;    //diffusivity  in cm^2/s
d=1.25*10^-3;        //density of air in g/cm^3
u=1.786*10^-4;         //viscosity of air in n*s/m^2
Dia=2.54;       //diameter in cm
nre=(Dia*v*d)/(u);     //calc. of reynolds no.
cf=2*0.036*(nre)^(-0.25);        //friction factor
nsc=(u)/(d*D);        //calc of schmidt no.
kc=(cf*v)/(2*(nsc)^(2/3));        //cf/2=kc/uo*(sc)^2/3

//consider an elelmental section of dx at a distance of x from the point of entry of air.
//let the conc. be c of diffusing component and c+dc at the point of leaving. mass balance across this elelmental gives
                  //rate of mass transfer=(cross sectional area)*(air velocity)*dc
                 //                       =(3.14*d^2/4)*v*dc  -----1 eqn
                                        
//flux for mass transfer from the surface=kc*(Cas-C)
//                  rate of mass transfer=(flux)*mass transfer
//                                       =kc*(Cas-C)*3.14*dx*D------2 eqn
//                           solving ----1 & -----2 we get
//                           
//                           (3.14*d^2/4)*v*dc=kc*(Cas-C)*3.14*dx*d;
//                           dc/(Cas-C)=(kc*3.14*d*v)/(3.14*d^2/4)*dx
//                           solving this we get
//                           ln[(Cas-C)/(Cas-C_in)]=(kc*4*x)/(d*v)

x=183;            //upper limit of x
C_in=0;            //C=C_in=0;
t=(kc*4*x)/(Dia*v);    //variable to take out the exponential
z=%e^t;
C_final=Cas-(z*(Cas-C_in));        //value of c_final in g*mol/cc;
printf("\t conc. of acid at outlet   :%f *10^-8 g*mol/cc\n",abs(C_final/10^-8));
rate=(3.14*Dia^2/4)*v*(C_final-C_in);
printf("\trate of mass transfer  :%f *10^-4 g*mol/s\n",abs(rate/10^-4));
//End