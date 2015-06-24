
clear;
clc;
printf("\t Example 2.16\n");
ya2=0.1;                              //molefraction at pos.2
ya1=0.8;                             //molefraction at pos.1
T=(370);                            //temperature  in kelvin
pt=1*1.013*10^5;                   //total pressure in pascal
z=0.1*10^-3;                      //gas film thickness in m
Dab=.15*10^-2;                   //diffusion coefficient in m^2/s
R=8314;                         //universal gas constant
Area=10;                       //area of the film is 10m^2

        //alcohol is being absorbed infrom amixture of alcohol vapour and water vapour by means of non-volatile solvent in which alcohol is soluble bt water is not 
        //for gase Dab=T^3/2
        //Dab1/Dab2=(T1/T2)^3/2

T2=370;                                         //final temperature in kelvin 
T1=298;                                        //initial temperature in kelvin
Dab1=.15*10^-2;                               //initial diffusion coefficient 
Dab2=((T2/T1)^(3/2))*Dab1;                   //final diffusion coefficient
Na=Dab2*pt*log((1-ya2)/(1-ya1))/(z*R*T);    //diffusion flux in kmol/m^2*s
rate=Na*3600*46*Area;                      //rate of diffusion of alcohol-water vapour in kg/hour
printf("\n  rate of diffusion of alcohol-water vapour  :%f *10^6 kg/hour ",rate/10^6);

//end