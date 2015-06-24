//Example 17.2
clear;
clc;
printf("\n Example 17.2");
//(a) 
  //For n = 1,
  //(P/P0)/V= (P/P0)V1+ 1/B2V1
  //where V is the gas phase volume equivalent to the amount adsorbed
  //x = (P/Po)
    x = [0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40];
  //y = (P/Po)/V in kg/m^3
    y = [0.76 1.35 1.85 2.27 2.66 2.94 3.21 3.42];
  //y1 = (P/Po)/(V*(1-P/Po)) in kg/m^3
    y1 = [0.80 1.50 2.18 2.88 3.55 4.20 4.94 5.73];
    plot(x,y,"o-");
    plot(x,y1,"+-");
    xtitle("","(P/Po)","(P/Po)/V or (P/Po)/(V*(1-P/Po))");
    legend("B.E.T.","Langmuir");
  
  //The data, which are plotted as (P /P 0)/V against P/P0  may be seen    to conform to a straight line only at low values of P/P0, suggestin    g that more than one layer of molecules isadsorbed.
  Slope = 12.56;
  V1 = 1/12.56;
  //The surface area occupied by this absorbed volume 
  S = V1*6.02*10^(26)*0.162*10^(-18)/24;
  printf("\n S = %d m^2/kg",S);
  
  
//(b) 
  //P/P0/V*(1 − P/P0)= 1/V1*B2+(B2−1)/(V1*B2)*(P /P 0)
  //y2 = (P/Po)
  //x2 = 1V^2
  y2 = [0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.50 0.60 0.87 0.80];
  x2 = [230 183 152 129 113 96 84 73 53 37 26 20];
  xset('window',1);
  plot(x2,y2,"o-");
  xtitle("Harkins-Jura Plot","1/V^2(kg^2/m^6)","P/Po");
  
  
  
  
  
  
  