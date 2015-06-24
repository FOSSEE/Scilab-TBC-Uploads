//Example 17.3
clear; 
clc;
printf("\n Example 17.3");
//For case (a):
  //Cs = 10C which represents a linear isotherm.
  //All concentrations move at the same velocity.If z0=0 at t = 0 for a    ll concentrations, the adsorption wave propagates as a step change     from the inlet to the outlet concentration.
  //f (Cs ) = 10
  //u = 1×10^(−4)/[(π/4)*(0.15^(2)*ε)] m/s
  //where ε is the intergranular voidage = 0.4
  e = 0.4;
  m = e/(1-e);
  printf("\n m=%f",m);
  t = 3600;              //time is in secs
  z = [(4*10^(-4))/(%pi*(0.15^2)*0.4)]*[3600/(1+10*(0.6/0.4))];
  printf("\n z = %.2f m",z);
  
  
//It may be noted that, when the adsorption wave begins to emerge from the bed, the bed is saturated in equilibrium with the inlet concentration.
//Hence: uAεtC0 = zA[εC0 + (1 − ε)Cs ]

//For case (b):
//Cs = 3C0.3 which represents a favourable isotherm.
//As C increases, f(C) decreases and points of higher concentrations are predicted to move a greater distance in a given time than lower concentrations. It is not possible for points of higher concentrationsto overtake lower concentrations, and if z0=0 for all concentrations,the adsorption wave will propagate as a step change similar to case a.

//Hence: z = ut/[1+(1/m)(Cs/Co)]
  Co = 0.003;              //in kmol/m^3
  z = [(4*10^(-4)*5/((%pi)*0.4*0.15^2))]*[3600/(1+(0.6/0.4)*(3/Co^0.7))];
  printf("\n z = %.2f m",z);

//For case (c):
//Cs = (10^(4))*(C^2) which represents an unfavourable isotherm.
//f(C)=2* 10^4* C.
//As C increases, f (C) increases such that, in a given time, z for lower concentrations is greater than for higher concentrations. Following the progress of the breakpoint concentration,C = 0.003 kmol/m^3,then:
//f(0.003) = 60
  z1 = [4*10^(-4)/(%pi*0.15^(2)*0.4)]*[3600/(1+(0.60/0.40)*60)];
  printf("\n For case (c)");
  printf("\n z = %.2f m",z1);


//At breakpoint,the bed is far from saturated and:
  saturation = 100*[(4*10^(-4)*3600)/(%pi*(0.15^(2)*0.4))]/[0.55*(1+(0.6/0.4)*(9/0.03))];
  printf("\n saturation = %.1f per cent",saturation);



















