
clear;
clc;
printf("\t Example 2.17\n");
ya2=0;                        //molefraction at pos.2
ya1=0.1;                     //molefraction at pos.1
T=(273);                    //temperature  in kelvin
pt=1*1.013*10^5;           //total pressure in pascal
z=2*10^-3;                //gas film thickness in m
Dab=.198*10^-4;           //diffusion coefficient in m^2/s
R=8314;                  //universal gas constant
        //ammonia is diffusing through an inert film 2mm thick 

        //for gase Dab=T^3/2
        //Dab1/Dab2=(T1/T2)^3/2
T2=293;                        //final temperature in kelvin 
T1=273;                        //initial temperature in kelvin
Dab1=0.198*10^-4;              //initial diffusion coefficient 
Dab2=((T2/T1)^(3/2))*Dab1;    //final diffusion coefficient
Na=Dab2*pt*log((1-ya2)/(1-ya1))/(z*R*T2);    //diffusion flux in kmol/m^2*s
printf("\n  flux of diffusion of ammonia through inert film :%f *10^-5 kmol/m^2*s ",Na/10^-5);

//if pressure is also incresed from 1 to 5 atm
       //for gases Dab=(T^3/2)/pt;
        //Dab1/Dab2=(T1/T2)^3/2*(p2/p1)
T2=293;                    //final temperature in kelvin 
T1=273;                    //initial temperature in kelvin
pa2=5;                    //final pressure in atm
pa1=1;                    //initial pressure in atm 
p=pa2*1.013*10^5;
Dab1=.198*10^-4;                            //initial diffusion coefficient
Dab2=((T2/T1)^(3/2))*Dab1*(pa1/pa2);        //final diffusion coefficient
Na=Dab2*p*log((1-ya2)/(1-ya1))/(z*R*T2);    //diffusion flux in kmol/m^2*s
printf("\n  flux of diffusion of ammonia if temp. is 20 and pressure is 5 atm  :%f*10^-5 kmol/m^2*s ",Na/10^-5);
printf("\n \n so there is no change in flux when pressure is changed"); 
//end