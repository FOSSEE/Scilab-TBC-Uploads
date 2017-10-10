//Fluid Systems- By Shiv Kumar
//Chapter 7- Performance of Water Turbine
//Example 7.11
// To Find  (a)Power Developed by Model   (b)Ratio of Heads and Ratio of Mass Flow Rates between Prototype and Model.
   clc
   clear

//Given:-
      Pp=12;       //Power Developed by Prototype,MW
      Lr=1/10;        //Scale Ratio
      DmbyDp=Lr;
       LmbyLp=Lr;


//Computations:-

     //(a)Power Developed by the Model
                   //As Np=Nm and effeciencies of prototype and model are equal
          Pm=Pp*10^6*(DmbyDp)^5;      //W
          
     //(b)Ratio of Heads and Ratio of Mass flow Rates
         HpbyHm=DmbyDp^(-2);            //Dimensionless
         QpbyQm=DmbyDp^(-3)
        //As m=rho*Q   and  rho is Constant. So,
         m_pbym_m=QpbyQm;

//Results

    printf("(a)Power Developed by the Model,Pm=%.f W\n",Pm)
    printf(" (b)Ratio of Heads, Hp/Hm=%.f\n    Ratio of Mass flow rates, m_p/m_m=%.f\n",HpbyHm,m_pbym_m)



