//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.13
// To Determine the maximum flow rate and specific speed for the Turbine and To Find Speed, Power Output and Water Consumption of the Model.
   clc
   clear

//Given:-
      Lr=10;        //Scale Ratio
      DpbyDm=Lr;
       DmbyDp=1/DpbyDm;
        //For Prototype
             Pp=1000;         //Power , kW
             Hp=14;            //Head, m
             Np=130;     //Speed, rpm
             eta_o=91/100;     //Overall efficiency 
      //For  Model
        Hm=6;         //Head, m
  //Data Required:-
       rho=1000;     //Density of Water, Kg/m^3
       g=9.81;       //Acceleration due to gravity, m/s^2

//Computations:-
        Qp=Pp*1000/(rho*g*Hp *eta_o );    //m^3/s
        Ns=Np*Pp^(1/2)/(Hp^(5/4));        //Specific Speed, In SI UNITS      
        Nm=Np*DpbyDm*(Hm/Hp)^(1/2);     //rpm
        Qm=Qp*(Nm/Np)*(DmbyDp)^3;       //m^3/s
        Pm=Pp*(Nm/Np)^3*DmbyDp^5;    //KW
       
//Results:-
       printf("For the Turbine : \n\t")
        printf("Maximum Flow Rate, Qp=%.f m^3/s\n\t",Qp)
        printf("Specific Speed, Ns=%.2f (SI Units)\n\n",Ns)
        printf("For the Model : \n\t")
        printf("Speed, Nm=%.2f rpm\n      Power Output, Pm=%.2f kW\n         Water Consumption, Qm=%.4f m^3/s \n", Nm,Pm,Qm)      //The Answer vary due to Round off Error
        
        
        
