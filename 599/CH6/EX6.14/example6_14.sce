
clear;
clc;
printf("\t Example 6.14\n");
            
d=450;                    //density of dry pulp in kg/m^3;
thickness=0.05;           //thickness in m^2
Ls=d*thickness;           //mass of bone dry solid ais the drying surface
A=1;                    //area in m^2
v=1*5*10^-2;           //volume of material
Nc=4.8;                //in kg/m^2*hr
xcr=.2;
xbar=0.02;
x1=.45;                //new moisture content on wet basis
x2=0.05;                //new moisture content on wet basis
X1=x1/(1-x1);              //new moisture content on dry basis intially
X2=x2/(1-x2);              //new moisture content on dry basis finally after drying
Xbar=xbar/(1-xbar);              //crtical moisture content
Xcr=xcr/(1-xcr);        //equillibrium moisture 

//tbar=(Ls/(A*Nc))*((Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
        // but initial moisture is more than Xcr, so there is constant rate drying period and only falling rate peroid is observed
tbar=Ls/(A*Nc) * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
printf("\n the time for drying the sheets from 45 to 5 percent moisture under same drying conditions is :%f min",tbar);

//end