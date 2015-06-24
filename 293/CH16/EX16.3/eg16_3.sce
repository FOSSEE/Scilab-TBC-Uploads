//a
P = 50; //power rating (in kVA)
Ph = 810; //wattmeter reading on short circuit test
Pl = 396; //wattmeter reading on open circuit test 
Ih = 20.8; //ammeter reading on short circuit test
pf = 0.8; //power factor = 0.8 lagging

losses = (Ph + Pl)/1000; //losses in kW
outputP = P*pf; //output power
inputP = outputP + losses ; //input power

efficiency = outputP/inputP ; 
disp("a")
disp(efficiency,"efficiency = ")

//b
Xeh = 4; //equivalent reactance referred to the higher side
Reh = 1.87; //equivalent resistance referred to the higher side
Zeh = complex(Reh, Xeh); //equivalent impedance referred to the higher  side
ih = complex(Ih*pf, -Ih*sqrt(1 - (pf^2))); 
V1 = 2400 + Zeh*ih ; //primary voltage 

voltageRegulation = (real(V1)-2400)*100/2400;//percent voltage regulation
disp("b")
disp(voltageRegulation,"percent voltage regulaton = ")  