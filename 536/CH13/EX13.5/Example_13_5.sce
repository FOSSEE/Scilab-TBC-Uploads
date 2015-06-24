clc;
clear;

printf('Example 13.5\n')

G1=1; //flow rate of air at 350 K
PH1=10; //Percentage Humidity at 350 K
G2=5; //flow rate of air at 300 K
PH2=30; //Percentage Humidity at 300 K

//from fig 13.4
H1=0.043; //Humidity at 350 K and 10 percent humidity
H2=0.0065; //Humidity at 300 K and 30 percent humidity
//Thus, in equation 13.23:
H=((G1*H1)+(G2*H2))/(G1+G2);
printf("\n Humidity of final stream = %.4f kg/kg",H);

//from fig 13.5
H_1=192e3;//Entahlpy at 350 K and 10 percent humidity
H_2=42e3;//Enthalpy at 300 K and 30 percent humidity
x=poly([0],'x');
H_=roots((G1*(x-H_1))-(G2*(H_2-x)));
printf("\n Entahlpy of the resultant stream = %.0f kJ/kg",H_*1e-3);

//From Figure 13.5:
//at H_ (Enthalpy)= 67 kJ/kg and H(humidity) = 0.0125 kg/kg
T=309;
printf("\n Temperature of the resultant stream = %d K",T);