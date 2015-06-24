
clear;
clc;
printf("\t Example 6_8_b\n");

//tbar=(Ls/(A*Nc))*((Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));

//part(i)
        // assuming only surface evaporation and assuming air moves parellel to  surface

//Nc=G^0.71;            G=V*d
//so NC = k* V^.71
Ls=1000;              //mass of bone dry solid ais the drying surface
A=55;                 //both upper surafce and lower surface are exposed
v=.75;                //velocity of air
Nc=.3*10^-3;          //in kg/m^2*s
x2=.2;                //moisture content on wet basis  finally after drying
Xcr=0.125;             //crtical moisture content
X1=0.15;              //moisture content on dry basis  intially
X2=0.025;             //moisture content on dry basis  finally after drying
Xbar=0.0;        //equillibrium moisture 
tbar=3.8077;       //time to dry material ,calculated from previous part
V1=.75;                //old velocity
V2=4;                  //new velocity
Nc2=Nc*(V2/V1)^.71;    //in kg/m^2*s
t2=(Ls/(A*Nc2))*((X1-Xcr)+(Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));    //if air velocity is increased to 4
t=tbar-t2/3600;            //time saved

printf("\n the time saved , if air velocity is increased to 4 m/s: %f",t);

//end