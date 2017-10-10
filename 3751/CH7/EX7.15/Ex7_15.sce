//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.15
//To Determine the rpm of Prototype, Ratio of Power Developed by Model and Prototype and Efficiency of Prototytpe .

   clc
    clear

//Given:-
        Lr=1/8;         //Scale Ratio
     //For Model,
         Hm=5;      //Head, m
         Nm=350;      //Speed,rpm
          eta_m=78/100;       //Effiency of model
      //For Prototype,
            Hp=100;     //Head, m

//Calculations:-
      DpbyDm=1/Lr;    //  Dp/Dm
      //(a) Speed of Prototype, Np
               Np=Nm*Lr*(Hp/Hm)^(1/2);     //rpm
      //(b)Ratio of Power Developed,  Pp/Pm
               PpbyPm=DpbyDm^5*(Np/Nm)^3;     
      //(c)Efficiency of Prototype when Scale Effect is Considered
            //From Moody's Equation,
                eta_p=(1-Lr^0.2*(1-eta_m))*100;      //In Percentage

//Results

printf(" (a)The Speed of Prototype, Np=%.2f rpm\n",Np)       //The Answer vary due to Round off Error
printf(" (b)Ratio of Power Developed,  Pp/Pm =%.2f \n",PpbyPm)       //The Answer vary due to Round off Error
printf(" (c)Efficiency of Prototype, eta_p =%.2f Percent\n",eta_p)       //The Answer vary due to Round off Error


