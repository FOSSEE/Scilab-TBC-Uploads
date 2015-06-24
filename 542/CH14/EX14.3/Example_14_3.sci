clear; 
clc;
printf('\n Example 14.3");
He = 2690;        //He is the enthalpy of entrained steam in kJ/kg
H4 = ((1*2780)+(1.6*2690))/2.60;

//Again assuming isentropic compression from 101.3 to 135 kN/m2, then:
H3 = 2640;      //in kJ/kg (from the chart)
n = (1.0+1.6)*(2725-2640)/[1.0*(2780-2375)];
printf("\n η = %.2f ",n);
printf("\n This value is low, since in good design overall efficiencies approach 0.75–0.80. Obviously the higher the efficiency the greater the entrainment ratio or the higher the saving in live steam");
Pe = 101.3;       //pressure of entrained vapour in kN/m^2
discharge_P = 135;//discharge pressure in kN/m^2
printf("\n the required flow of live steam = 0.5 kg/kg entrained vapour.");
printf("\n In this case the ratio is (1.0/1.6) = 0.63 kg/kg");
    