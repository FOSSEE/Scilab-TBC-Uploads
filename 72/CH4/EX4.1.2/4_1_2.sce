

// chapter no.-4
// Example-4-1-2 , page no.-133
 

//Program to find the peak value of the electric field occuring in the guide.


clc; 
m=1; n=0;                                              //given guide transports energy in the TE10 mode.
f=30*(10^9);                                           //The impressed frequency is 30GHZ
uo=(4*(%pi))*(10^-7);eo=8.85*(10^(-12));               //scientific values of permeability and permittivity in free space
a=.02; b=.01;                                          // dimensions of wave-guide given in metres
energyrate=0.5*746;                                    //given ,the rate of transport of energy =0.5 hp   ,1 horse power(1 hp)= 746 watts.

kc=%pi/a;                                              //kc is cutoff wave number  , kc=sqrt((m*%pi/a)+(n*%pi/b)) ,For m=1,n=0 =&gt; kc=%pi/a
bg=sqrt((((2*%pi*f)^2)*(uo*eo)) - (kc^2));             //bg is the phase constant in radian/metre, bg=sqrt((w^2)*(uo*eo))-(kc^2)); where w=2*%pi*f
Zg=((2*%pi*30*(10^9))*uo)/bg;                          //Zg is the characteristic wave impedence ,Zg=(w*uo)/bg; where w=2*%pi*f

syms x z Eoy Hoz                                       //Defining the variables

Ex=0;                                                  //since, Ex=Eox*cos((m*%pi*x)/a)*sin((n*%pi*y)/b)*exp(-%i*bg*z)..For m=1 , n=0 =&gt; Ex=0
Ey = Eoy*sin((%pi*x)/a)*exp(-%i*bg*z);                 //since ,Ey = Eoy*sin((m*%pi*x)/a)*cos((n*%pi*y)/b)*exp(-%i*bg*z) (here put m=1,n=0)
Ez=0;                                                  // For TE mode Ez=0 

Hx=(Eoy/Zg)*sin((%pi*x)/a)*exp(-%i*bg*z);              //since, Hx=Hox*sin(m*%pi*x)/a)*cos((n*%pi*y)/b)*exp(-%i*bg*z). put m=1,n=0 and Hox=(Eoy/Zg)
Hy = 0 ;                                               //since ,Hy = Hoy*cos((m*%pi*x)/a)*sin((n*%pi*y)/b)*exp(-%i*bg*z)  here(for m=1,n=0) =&gt; Hy=0
Hz=Hoz*cos((%pi*x)/a)*exp(-%i*bg*z);                   //Hz=Hoz*cos(m*%pi*x)/a)*cos((n*%pi*y)/b)*exp(-%i*bg*z). put m=1,n=0 .

Hxc=Hx';                                               //power formula of poynting involves integrating (Ey*cojugate(Hx))over guide dimension.Thus                                                               we take conjugate of hx for propagation of wave in z direction

power=(Ey*Hxc);                                        //(Taking the term (Ey*cojugate(Hx)) from power formula of poynting vector 
power=power/(Eoy^2);                                //normalise power with respect to (Eoy^2) so as to definitely integrate remaining terms in x and y.
 
temp = str2max2sym(power.str1);                 
PowerToIntegrate = max2scistr(temp.str1) ;     //coverting_type_sym_into_type_string 

I=integrate(PowerToIntegrate,'x',0,a);  //integrate X=(Ey*cojugate(Hx))(which is normalised with respect to Eoy^2) with respect                                                                    to x dimension from 0 to a. Thus the result of above multiplication(Ey*Hxc)/(Eoy^2)                                                                    = 1333*sin(2599825*x/16551)^2/519323 is written here for definite intergration.

I=I*b;                                              //since definite integral is independent of y.Hence dimension in y direction i.e,b can be taken out

I=real(I);                                          //since from poyting formula [energyrate = (0.5*(real(I))*(Eoy^2))].So we consider only real                                                            part of I.


Eoy=sqrt((energyrate*2)/I);                         // since ,energyrate =373= (0.5*(real(I))*(Eoy^2))

disp((Eoy/1000),'the peak value of the electric field intensity in(KV/m)');    //  display peak value of electric field .Divide by 1000 to obtain the                                                                                      electric field intensity in KV/m.
