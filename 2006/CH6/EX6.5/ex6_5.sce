clc;
// (a).For the refrigerator 
TL=258; // Operating temperature in kelvin
TH=313; // Operating temperature in kelvin
QL=3.5167; // Ton of refrigeration in kW
COP=TL/(TH-TL); // COP of Refrigeration unit
W=QL/COP; // Power comsumption of refrigerator
disp ("kW",W,"Power comsumption of refrigerator = ","(a).For the refrigerator");
// (b). For the freezer
TL=248; // Operating temperature in kelvin
TH=313; // Operating temperature in kelvin
COP=TL/(TH-TL); // COP of Freezer unit
QL=W*COP; // Refrigeration produced
disp ("kW",QL,"Refrigeration produced = ","(b). For the freezer")
