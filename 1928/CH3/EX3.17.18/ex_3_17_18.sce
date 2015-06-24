//Chapter-3,Example3_17_18,pg 3-42

phi=1.5*10^-4                           //magnetic flux

ur=900                                  //relative permeability of material

n=600                                   //number of turns

u0=4*%pi*10^-7                          //permeability of free space

A=5.8*10^-4                             //cross section area of ring

d=40*10^-2                              //mean diameter of ring

li=%pi*d                                //mean circumference of ring

la=5*10^-3                              //air gap

B=phi/A                                 //flux density

//for air gap

Ha=B/(u0)                               //magnetic field for air gap

//for iron ring

Hi=B/(u0*ur)                            //magnetic field for iron ring

//therefore, Amp turn in air gap

Ata=Ha*la                               //Amp-turns required

//therefore, Amp-turn in ring

Ati=Hi*li                               //Amp-turns required

//therrfore total mmf required

mmf=Ata+Ati

//Current required

I=mmf/n                                  //current required

printf("Current required =")

disp(I)

printf("Amp")