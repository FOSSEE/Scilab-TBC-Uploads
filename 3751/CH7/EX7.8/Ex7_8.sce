//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.8
// To Find Model Runner Speed and Prototype to Model Scale ratio
   clc
   clear

//Given:-
     //For Prototype
            Pp=30;        //Power Developed, MW
            Hp=55;        //Head,  m
            Np=100;      //Speed, rpm
            Pp=Pp*1000;      //KW
      //For Model
            Pm=25 ;        //Power Developed, KW
            Hm=6;           //Head, m
 
//Computations:-
        Nm=Np*(Hm/Hp)^(5/4)*(Pp/Pm)^(1/2);              //rpm
         DpbyDm=((Pp/Pm)*(Nm/Np)^3)^(1/5);              //A Ratio(Dimensionless)
         Lr= DpbyDm;        //Scale Ratio


//Results
   printf("The Model Runner Speed, Nm=%.2f rpm And\n",Nm)
   printf("Prototype to Model Scale Ratio,Lr=%.2f",Lr)      //The Answer vary due to Round off Error


