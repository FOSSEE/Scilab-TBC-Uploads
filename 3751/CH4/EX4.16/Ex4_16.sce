//Fluid Systems - By - Shiv Kumar
//Chapter 4 - Pelton Turbine (Impulse Turbine)
//Example 4.16
  
      clc
       clear

//Given Data:-
       P=4900;        //Shaft Power, kW
      P_mr=100;       //Power absorbed in mechanical resistance,  kW
      eta_H=92/100;        //Hydraulic Efficiency
      P_n=415;         //Power lost in Nozzle, kW 


 //Computations:-
           P_rd=P+P_mr;         //Power Devrloped by Runner, kW
           P_rs=P_rd/eta_H;      //Power Supplied to Runner, kW
           P_an=P_n+P_rs;       //Power Available at base of Nozzle, kW
           eta_o=P/P_an*100;       //Overall Efficiency in Percentage       

//Results:-
        printf("(a)Power Available at the Base of Nozzle=%.3f kW\n",P_an)       //The answer vary due to round off error
        printf("(b)Overall Efficiency, eta_o=%.2f Percent\n",eta_o)



