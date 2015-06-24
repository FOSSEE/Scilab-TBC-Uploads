clear;
clc;
printf("\n Example 14.5");
//Properties of the ejector
e1 = 0.95;          //nozzle efficiency
e2 = 0.80;          //efficiency of momentum transfer
e3 = 0.90;          //efficiency of compression
P1 = 650;           //pressure of live stream
P2 = 101.3;         //pressure of entrained steam
H1 = 2970;//The enthalpy of the live steam at 650 kN/m2 and (435 + 100) in  kJ/kg
H2 = 2605;//the enthalpy after isentropic expansion from 650 to 101.3 kN/m2, using an enthalpy–entropy chart,in kJ/kg
x2 = 0.97;         //dryness fraction

printf("\n The enthalpy of the steam after actual expansion to 101.3 kN/m^2 is %d kJ/kg",e1*(H1 - H2));
LatentHeat = 2258;      //latent heat at 101.3 kN/m^2
//dryness after expansion but before entrainment x21 is given by:
//(x21− x2)λ = (1 − e1)(H1 − H2)
x21 = poly([0],'x21');
x22 = roots((x21-x2)*LatentHeat-(1-e1)*(H1-H2));
printf("\n dryness after expansion but before entrainment x21 is = %.3f",x22);

//If x23 is the dryness after expansion and entrainment, then:
//(x23−x2)λ = (1 − e3)(H1 − H2)
x23 = poly([0],'x23');
x24 = roots((x23-x2)*LatentHeat-(1-e3)*(H1-H2));
printf("\n the dryness after expansion and entrainment is %.2f",x24);

P3 = 205;             //discharge pressure in kN/m^2
//Assuming that the steam at the discharge pressure P3 = 205 kN/m2 is also saturated
x3 = 1;
H3 = 2675;//enthalpy of the mixture at the start of compression in the diffuser section at 101.3 kN/m2

//Again assuming the entrained steam is also saturated, the enthalpy of the mixture after isentropic compression in thediffuser from 101.3 to 205 kN/m2 is H4
H4 = 2810;       //in kJ/kg
m = {[(H1-H2)/(H4-H3)]*e1*e2*e3-1};  //m = m2/m1
printf("\n m2/m1 = %.2f kg vapour entrained/kg kive stream",m);
printf("\n Thus with a flow of 0.14 kg/s live steam, the vapour entrained at 101.3 kN/m2 is %.2f kg/sec",0.14*m);
printf('\n Total saturated steam = %.2f kg/sec at 205 kN/m^2",0.14+0.14*m);
printf("\n The economy of the steam = %.2f",0.214/0.14);
printf("\n The capacity in terms of throughput of solution Gf = %.3f kg/sec",0.214+0.025);



















