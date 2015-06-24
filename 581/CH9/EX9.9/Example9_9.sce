
clear;
clc;

printf("\t Example 9.9\n");

T1=480;        //bulk temp.of water, K
m=0.6;         //mass flow rate of saturated water,kg/s
D=0.05;        //diameter of vertical tube,m
p=184000;      //heating rate f tube, W/m^2
A=0.001964;     //area of the pipe,m^2
Pr=0.892;       //prandtl no.
x=0.2;          //quality
a1=9.014;        //density of gas,kg/m^3
a2=856.5        //density of water, kg/m^3
Hfg=1913*1000;    //latent heat,J/kg

G=m/A;        //superficial mass flux
Relo=G*D/(1.297*10^-4);    //reynolds no. for liquid only.
f=1/(1.82/2.303*log(Relo)-1.64)^2;     // formula for friction factor for smooth pipes

Nu=(f/8*Relo*Pr)/(1.07+12.7*(f/8)^(0.5)*(Pr^(2/3)-1));   //formula for nusselt no.in fully developed flow in smooth pipes

hlo=0.659*Nu/D;        //heat transfer coefficient,w/(m^2*K)

Co=((1-x)/x)^0.8*(a1/a2)^0.5;        // Convection no.
Bo=p/(G*Hfg);            // boiling no.

Hfg1=(1-x)^0.8*(0.6683*Co^(-0.2)+1058*Bo^0.7)*hlo;         //heat transfer coefficient for nucleate boiling dominant, w/(m^2*K)
Hfg2=(1-x)^0.8*(1.136*Co^(-0.9)+667.2*Bo^0.7)*hlo;               //heat transfer coefficient for connective boiling dominant, w/(m^2*K)

//since the second value is larger,we will use it.

Tw=T1+p/Hfg2;            //wall temperature ,K
Tw1=Tw-273;
printf("\t wall temperature  is : %.0f C\n",Tw1);
//end

