
clear;
clc;
printf("\t Example 6.11\n");
            
d=.22;                    //density of dry pulp in g/cc;
x1=.65;                //moisture content on wet basis
x2=.3;                //moisture content on wet basis
Ls=2.5;                //mass of bone dry solid ais the drying surface in kg
A=1.5*1.5*2;            //both upper surafce and lower surface are exposed
v=1.5*1.5*.5;           //volume of material
Nc=1.4;                 //in kg/m^2*hr
Xcr=1.67;              //crtical moisture content
X1=x1/(1-x1);                 //moisture content on dry basis  intially
X2=x2/(1-x2);              //moisture content on dry basis  finally after drying
Xbar=0.0;             //equillibrium moisture 

        //initial moisture is more than Xcr, so there is constant rate drying period and only falling rate peroid is observed
tbar=(Ls/(A*Nc))*((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
printf("\n the time for drying the sheets from 65 to 30 percent moisture under same drying conditions is :%f hour",tbar);

//end