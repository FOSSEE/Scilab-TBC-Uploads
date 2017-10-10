//Fluid Systems by Shiv Kumar
//Chapter 7 - Performance of water turbine
//Example 7.6
//To Find Speed and Power Developed by the Turbine
      clc
       clear

//Given:
   //Ist Condition
      P1=8500;  //Power Developed, kW
      N1=120;   //Speed, rpm
      H1=32;    //Head, m

   //2nd Condition
       H2=25;    //Head, m

//Computations:
  P2=P1*(H2/H1)^(3/2);      //kW
  N2=N1*(H2/H1)^(1/2);     //rpm

//Results
   printf("The Speed Developed by the Turbine,N2=%.f rpm\n",N2)
   printf("The power developed= %.2f kW",P2)
