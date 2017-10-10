//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.14
//To Determine the Size (Scale Ratio) of the Model and To Find the Model Speed and  Power.

   clc
    clear

//Given:-
     TP=240000;       //Total Power Produced, kW
      n=4;       //No. of Turbines
      eta_o=91/100;        //Effeciency of each turbine
       Np=120;        //Speed of each Turbine, rpm
       Hp=70;        //Head for each Turbine, m 
        
       Qm=0.45;        //Discharge for Model, m^3/s
       Hm=5;          //Head for testing the Model, m

//Data Required:-
         rho=1000;     //Density of Water, Kg/m^3
         g=9.81;        //Acceleratrion due to gravity, m/s^2

//Calculations:-
       Pp=TP/n;       //Power produced from each Turbine, kW
       Qp=Pp*1000/(rho*g*Hp*eta_o);      //Discharge passing through one Turbine, m^3/s
       DmbyDp=(Qm/Qp)^(1/2)*(Hp/Hm)^(1/4);          //From Relation of Flow Coefficient
        Lr=DmbyDp;       //Scale Ratio
        Nm=(Np/DmbyDp)*(Hm/Hp)^(1/2);     //rpm
        Pm=Pp*(Nm/Np)^3*DmbyDp^5;        //KW

//Results
    printf("The Scale Ratio is  1:%.2f\n ",1/Lr)
    printf("Model Speed, Nm=%.2f rpm\n",Nm)
    printf("Model Power, Pm=%.2f kW\n",Pm)       //The Answer vary due to Round off Error


