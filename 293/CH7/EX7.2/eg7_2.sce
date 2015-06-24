theta = %pi/6; //phase difference between current and voltage 
pf = cos(theta); //power factor 
disp(pf,"power factor = ")

Vm = 170; //peak voltage 
Im = 14.14; //peak current 

Pav = Vm*Im*pf/2; //average power delivered to the circuit 
disp(Pav,"average power delivered to the circuit = ")