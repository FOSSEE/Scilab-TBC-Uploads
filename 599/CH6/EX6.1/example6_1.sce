
clear;
clc;
printf("\t Example 6.1\n");

    //air leaves the pre-heater of the dryer at 325K

H1=.005;                        //humidity of incoming air per kg of dry air
T1=25;                          //wet bulb temperature
    //moisture is removed along constant wet bulb temp. till 60per R.H is reached
// from the chart ,humidity of ai rleaving first shelf =.016 kg water /kg dry air.

//dry bulb temp. of exit air is at 27 degree aand is at humidity of .016 kg water/kg dry air.the air is again heated to 52 degree dry bulb temp. in 2nd heater .

    //so air leaves heater at 52 degree and humidity of .016 kg water/kg dry air. when it leaves the 2nd shelf the correspondin dry bulb temp. is 34 degree and humidity is .023 kg water/kg dry air. the air enters the 3rd shelf after preheating to 52 degree . 
    
//similarly fro 3rd shelf , exit air has a humidity of .028 kg water/kg dry air and adry bulb temp. is 39 degree. the air is leaving the 4rth shelf has a humidity of .016 kg water/kg dry air and adry bulb temp. of 42 degree(the figure is only indicative and doed not correspond toactual one)

printf("\n  the solid temp. correspond to wbt and they are 23, 27,32 and 34  degree respectively");

        //part(ii)
Ybar=.032;                 //kg water/kg dry air//final moist air condotions 
T2=42;                    //dry bulb temperature
Mair=28.84;               //molecular weight of air 
Mwater=18;                  //molecular weight of water
pt=1.013*10^5;            //total pressure in pascal
Vh=8315*((1/Mair)+(Ybar/Mwater))*((T2+273)/pt);
r=300;                    //flow rate of moist air leaving the dryer
a=r*60/Vh;               //amount of dry air leaving /hr
w=a*(Ybar-0.005);         // water removed /hr
printf("\n the water removed /hr is :%fkg /hr",w);

//end