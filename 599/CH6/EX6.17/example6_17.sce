
clear;
clc;
printf("\t Example 6.17\n");
            //moisture content reduces from 25 to 2
r=7.5*10^-5;                    //constant drying rate in kg/s
A1=.3*.3**2;                    // area of the sppecimen
Nc=r/A1;                        //drying rate
Xcr=.15/0.85;                    //.15 is the critical moisture content
Xo=.25/.75;                    //.25 is the initial moisture content
Xfinal=.02/0.98;               //.02 is the final moisture content
Xbar=0;                      //equillibrium moisture content
A=1.2*.6*2;                 //area of the new solid
Ls=28.8;                     //bone dry weight of new solid
v1=.3*.3*.006;               //volume of the old solid;
v2=.6*1.2*.012;              //volume of the new solid
w2=1.8;                     //weight of the old solid
w3=864*10^-5*1.8*10^-5/54;   //weight of the bone dry solid

    //Nc is prporional to =(t-ts) = (G)^0.71---- whrere G is the mass flow rate
v1=3;                      //old velocity
Tg=52;                     //old dry bulb temperature
Tw=21;                     //wet bulb temperature
H=.002;                    //humidity 
SH=0.015;                  //saturated humidity 
vnew=5                    //new velocity
Tgnew=66;                 //new DBT
Twnew=24;                 //new WBT
Hnew=.004;               //new humidity
SH=.020;                //new satuurated humidity
            
            //hence drying rate of air under new condition
Nc=4.167*10^-4*((vnew/v1)*(273+Tg)/(273+Tgnew))^0.71 * ((.019-H)/(.015-H));//drying rate of air under new condition in kg/m^2*s 
DT=Ls/(A*Nc) * ((Xo-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(Xfinal-Xbar)));
printf("\n the time for drying the sheets from 25 to 2 percent moisture under same drying conditions is :%f hours",DT/3600);


//end