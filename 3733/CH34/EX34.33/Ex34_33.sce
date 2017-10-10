// Example 34_33
clc;funcprot(0);
//Given data
P=210*10^3;// kW
CC=10000;// Rs./kW

//Calculation
CC=CC*P;// Capital cost of the plant in rupees
//(a)When the plant is operating at full load
F_l=1;// Load factor
Fc=CC*(13/100);// Fixed cost in rupees
Vc=Fc*1.3;// Variable cost in rupees
Tc=Fc+Vc;// Total cost in rupees
E_t=(P*F_l*8760);//Total units generated per year in kWh
Gc_1=(Tc/E_t)*100;// Generating cost in paise/kWh

//(b)When the plant is running at 50% load
F_l=50/100;
E_t=E_t*F_l;// Total units generated per year in kWh
Vc=Vc/2;// Variable cost in rupees
Tc=Fc+Vc;// Total operating cost in rupees
Gc_2=(Tc/E_t)*100;// Generating cost in paise/kWh
printf('\n(a)Generating cost when the plant is operating at full load=%0.1f paise/kWh \n(b)Generating cost when the plant is operating at 50 percentage load=%0.0f paise/kWh',Gc_1,Gc_2);
// The answer vary due to round off error
