//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 4.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


Z=[400,380,350,300,350,500,700,750,900,1200,1350,1200,1000,950,1250,1300,1400,1300,1500,1800,2000,1950,1000,800];
Totalenergy = 0;                                                                //Initial Total energy
for i=1:length(Z)
Totalenergy=Z(i)+Totalenergy;
end
Averagedemand=Totalenergy/24;                                                   //Average demand of the feeder in kW
Maximumdemand=2000;                                                             //Maximum demand of the feeder in kW
Loadfactor=Averagedemand/Maximumdemand;                                         //Load factor of the feeder 
Lossfactor=0.14;                                                                //Loss factor of the feeder
Peakloadpowerloss=108;                                                          //Peakload power loss of the feeder in kW
Averagepowerloss=Lossfactor*Peakloadpowerloss;                                  //Average power loss of the feeder in kW
Annualpowerloss=Averagepowerloss*365;                                           //Annual power loss of the feeder in kW
Connecteddemand=2500;                                                           //Connected demand of the feeder in kW
Demandfactor=Maximumdemand/Connecteddemand;                                     //Demand factor of the feeder



printf("\nThe average powerloss of the feeder %.2f kW",Averagepowerloss);
printf("\nThe annual powerloss of the feeder %.1f kW",Annualpowerloss);
printf("\nThe demand factor of the feeder %.2f",Demandfactor);




