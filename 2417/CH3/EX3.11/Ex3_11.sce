clear;
clc;
printf("\t\t\tProblem Number 3.11\n\n\n");
// Chapter 3 : The First Law Of Thermodynamics
// Problem 3.11 (page no. 111) 
// Solution

//Given data
//                    Inlet     Outlet
//Pressure(psia)      1000      1
//Temperature(F)      1000      101.74
//Velocity(ft/s)      125       430
//Inlet position(ft)  +10       0
//Enthalpy(Btu/LBm)   1505.4    940.0
//Steam flow rate of 150000 LBm/hr

//From the table,
Z1=10; V1=125; h1=1505.4; Z2=0; V2=430; h2=940.0;

//Energy equation is given by
//((Z1/J)*(g/gc)) + (V1^2/(2*gc*J)) + h1 + q = ((Z2/J)*(g/gc)) + (V2^2/(2*gc*J)) + h2 + w/J
printf("Solution for (a) \n");
q=0; //net heat
J=778; //Conversion factor
gc=32.174; //Unit: (LBm*ft)/(LBf*s^2) //gc is constant of proportionality
g=gc; //Unit:ft/s^2 //g=The local gravity
//W1=w/J;
//Energy equation is given by
W1=((Z1/J)*(g/gc)) + (V1^2/(2*gc*J)) + h1 + q - ((Z2/J)*(g/gc)) - (V2^2/(2*gc*J)) - h2; //Unit:Btu/LBm
printf("If heat losses are negligible,\n");
printf("Total work of the turbine is %f Btu/LBm\n",W1);
printf("Total work of the turbine is %f Btu/hr\n",W1*150000); 
//(W*150000*778)/(60*33000) //in terms of horsepower  //1 hr=60 min //1 hp=33000 (ft*LBf)
printf("Total work of the turbine is %f hp \n",(W1*150000*778)/(60*33000)); 
//1 hp =0.746 kW
printf("Total work of the turbine is %f kW \n\n",((W1*150000*778)/(60*33000))*0.746);


printf("\nSolution for (b) \n");
//Heat losses equal 50,000 Btu/hr
q=50000/150000; //Unit:Btu/LBm //Heat loss
W2=((Z1/J)*(g/gc)) + (V1^2/(2*gc*J)) + h1 - q - ((Z2/J)*(g/gc)) - (V2^2/(2*gc*J)) - h2; //Unit:Btu/LBm
printf("If heat losses equal 50,000 Btu/hr , Total work of the turbine is %f Btu/LBm\n",W2);

