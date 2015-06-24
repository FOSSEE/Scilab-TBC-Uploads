
clear;
clc;
printf("\t Example 6.9\n");

            //determine the drying condition of sample 0.3*0.3 size.sheet lost weight at rate of 10^-4 kg/s until the moisture fell to 60 percent
            
x1=.75;                //moisture content on wet basis
xbar=0.1;                //equilllibrium moisture on dry basis
xcr=0.6;                //critical moisture content
Ls=0.90;                //mass of bone dry solid ais the drying surface
A=0.3*0.3*2;            //both upper surafce and lower surface are exposed
//A*Nc=10^-4;
x2=.2;                //moisture content on wet basis  finally after drying
Xcr=0.6/0.4;          //crtical moisture content
X1=3;                 //moisture content on dry basis  intially
X2=0.25;              //moisture content on dry basis  finally after drying
Xbar=0.1/0.9;        //equillibrium moisture 
tbar=Ls/(10^-4) * ((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));
printf("\n the time for drying the sheets from 75 to 25 percent moisture under same drying conditions is :%f hr",tbar/3600);

//end