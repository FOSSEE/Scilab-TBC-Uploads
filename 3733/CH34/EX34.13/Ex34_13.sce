// Example 34_13
clc;funcprot(0);
//Given data
C_kw=500;// Charges in Rs./kW
MD=800;// Maximum demand in kW
Cc_1=8*10^5;// Capital cost of Public supply in Rupees
F_l=30/100;// Load factor
ID_1=10;// Interest and decpreciation charges on capital of public supply in %
Cc_2=3*10^6;// Capital cost of private supply in Rupees
ID_2=12;// Interest and decpreciation charges on capital of private supply in %
Fc=0.35;// Fuel consumption in kg/kW-hr
Cf=80;// Percentage per kg
C_e=40;//  Percentage per kW-hr
C_ml=10;//The maintainence and labour charges in percentage per kW-hr

//Calculation
L_a=MD*F_l;// Average load in kW
ERPY=240*8760;// Energy required per year in kW-hrs

//(a)Public supply
C_MD=C_kw*MD;//Charge for maximum demand per year in Rupees
ID=(ID_1/100)*Cc_1;// Interest and decpreciation in Rupees
C_ey=(C_e/100)*ERPY;// Energy cost per year in Rupees
TC=C_MD+ID+C_ey;// Total cost in Rupees
AEC_1=TC/ERPY;// Average energy cost in Rs./kWh

//(b)Private supply
Fc_y=(Fc*ERPY)/1000;// Fuel consumption per year in tons
C_f=Fc_y*1000*(Cf/100);// Cost of fuel in Rupees
MLC=(C_ml/100)*ERPY;// The maintainence and labour charges per year
ID=(ID_2/100)*Cc_2;// Interest and decpreciation in Rupees
TC=C_f+MLC+ID;// Total cost in Rupees
AEC_2=TC/ERPY;// Average energy cost in Rs./kWh
printf('\n(a)Public supply:Average energy cost=Rs.%0.2f/kWh \n(b)Private supply:Average energy cost=Rs.%0.2f/kWh',AEC_1,AEC_2);
if(AEC_1>AEC_2)
    printf('\n As the average energy cost for oil engine is less than the public supply,the oil engine generation is more preferable.');
else(AEC_1<AEC_2)
    printf('\nPublic supply is preferable');
end

