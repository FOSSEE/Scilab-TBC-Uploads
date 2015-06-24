
clear;
clc;
printf("\t Example 6.12\n");
            
d=.22;                    //density of dry pulp in g/cc;

Ls=1.125*10^-2*.22*10^3;                //mass of bone dry solid ais the drying surface
A=1.5*1.5*2;            //both upper surafce and lower surface are exposed
v=1.5*1.5*.5;           //volume of material
Nc=1.4;                //in kg/m^2*hr
x2=.2;                //moisture content on wet basis  finally after drying
Xcr=0.46;              //crtical moisture content
X1=0.15;                 //moisture content on dry basis  intially
X2=0.085;              //moisture content on dry basis  finally after drying
Xbar=0.025;        //equillibrium moisture 

//tbar=(Ls/(A*Nc))*((Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
        // but initial moisture is more than Xcr, so there is constant rate drying period and only falling rate peroid is observed
tbar=(Ls/(A*Nc))*((Xcr-Xbar)*log((X1-Xbar)/(X2-Xbar)));
printf("\n the time for drying the sheets from 15 to 8.5 percent moisture under same drying conditions is :%f min",tbar*60);

//end