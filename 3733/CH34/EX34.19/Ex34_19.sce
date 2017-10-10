// Example 34_19
clc;funcprot(0);
//Given data
//(i)A private diesel generating plant
MD=900;// kW
F_l=30;// Load factor in %
Cc=90*10^5;// Capital cost in rupees
Cf=800;// Fuel cost in Rs./ton
Fc=0.3;//Fuel consumption in kg/kWh-generated
Mc=2.5;// Cost of maintainence in paise/kWh-generated
Oc=0.3;// Cost of lubricating oil,water,store,etc in paise/kWh-generated
W=180000;// Wages in Rs./year 
ID_1=10;//Interest and decpreciation in % per year
//(ii)Public supply
MD_pub=1500;// Maximum demand per year in Rs./kW
Mc_pub=80;// paise/kWh

//Calculation
//(i)Private plant
ID=ID_1*Cc;//Interest and decpreciation in rupees
Nu=MD*(F_l/100)*8760;//Number of units required per year in kWh/year
Fr=(F_l/100)*(Nu);// Fuel required in kg/year
CF=Fr*(Mc_pub/100);// Fuel cost in Rs./year
Cmo=((0.3+2.5)/100)*Nu;//Cost of maintainence,oil and water in Rs./year
Tc=ID+CF+Cmo+W;// Total cost of running the plant per year in rupees
Ec_1=(Tc/Nu);//The energy cost in Rs./kWh
//(ii)Public supply
Tc=(MD_pub*MD)+((Mc_pub/100)*Nu);// Total cost in Rs./year
Ec_2=Tc/Nu;// Energy cost in Rs./kWh
if(Ec_1>Ec_2)
    printf('\nThe public supply set is preferable as its cost is less than diesel set.');
else
    printf('\nThe private supply set is preferable as its cost is less than diesel set.');
end
// The answer provided in the textbook is wrong
