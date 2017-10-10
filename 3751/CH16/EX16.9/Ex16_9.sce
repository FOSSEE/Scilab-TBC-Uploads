//Fluid Systems - By Shiv Kumar
//Chapter 16- Hydraulic Power and Its Transmissions
//Example 16.9
//To Deternmine the Diameter of the ram.
      clc
      clear

//Given Data:-
      d=125;        //Diameter of Pipe, mm 
      l=2;         //Lenght of Pipe, km 
      P=35;     //Power Transmitted, kW
      W=1250;       //Load on ram, kN
      loss_per=3;      //Percentage of Power Loss due to friction
      f_dash=0.04;       //Pipe Friction Factor

//Data Used:-
      rho=1000;     //Density of Water, kg/m^3 
      g=9.81;        //Acceleration due to gravity, m/s^2

//Computations:-
       Delta_P=loss_per/100*P*1000;       //Power Loss due to friction , W
     //By Darcy's Formula,
        hf_by_V2=f_dash*(l*1000)/(2*g*d/1000);     //hf/V^2  
    
      QbyV=(%pi/4)*(d/1000)^2;       //Q/V
       V=( Delta_P/(rho*g*QbyV*hf_by_V2))^(1/3);      //m/s 
       Q=QbyV*V;      //m^3/s
       p=P*1000/Q;      //N/m^2
       D=sqrt(W*1000/(p*%pi/4))*1000;         //mm

//Result:-
     printf("The Diameter of ram, D=%.2f mm",D)       //The answer vary due to round off error  


