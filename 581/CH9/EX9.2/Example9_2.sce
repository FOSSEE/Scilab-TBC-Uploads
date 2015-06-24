
clear ;
clc;

printf("\t Example 9.2\n");

q=800;     //power delivered per unit area,KW/m^2
T1=373;         //saturated temp.of water, K
delT=22;        // temp. difference,K
Cp=4.22;        //heat capacity of water,kj/(kg*K)
Pr=1.75;        //prandtl no.
a=958;          //desity difference,kg/m^3
s=0.0589;       //surface tension,kg/s^2
Hfg=2257;       //latent heat,kj/kg

//by using rohensow correlation applied data for water boiling on 0.61 mm diameter platinum wire

Csf=(3.1*10^-7*(delT)^3/(q))^(1/3);    //surface correction factor of the heater surface

printf("\t surface correction factor of the heater surface is : %.3f, this value compares favorably with Csf for a platinum or copper surface under water.\n",Csf);
//end