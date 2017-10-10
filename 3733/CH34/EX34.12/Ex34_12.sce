// Example 34_12
clc;funcprot(0);
//Given data
C_1=5000;//Cost of first unit in Rupees
MD_1=100;// Maximum demand in kW
C_2=14000;//Cost of second unit in Rupees
MD_2=60;// Maximum demand in kW
n=40000;// Useful life in hours 
C_e=80;//Energy charge per kW in Rupees/year
C_kwh=5/100;//Energy charge per kW-hr in Rupees

//Calculation
//(a)First unit
Cc=C_1/n;// Capital cost of unit per hour in Rupees
C_MD=((MD_1*C_e)/8760);// Charge for maximum demand per hour in Rupees
C_eh=MD_1*1*C_kwh;// Energy charge per hour in Rupees
TC_1=Cc+C_MD+C_eh;// Total charges per hour for the operation of first unit in Rupees
//(b)Second unit
Cc=C_2/n;// Capital cost of unit per hour in Rupees
C_MD=((MD_2*C_e)/8760);// Charge for maximum demand per hour in Rupees
C_eh=MD_2*1*C_kwh;// Energy charge per hour in Rupee
TC_2=Cc+C_MD+C_eh;// Total charges per hour for the operation of second unit in Rupees
printf('\n(a)Total charges per hour for the operation of first unit=Rs.%0.3f\n(b)Total charges per hour for the operation of second unit=Rs.%0.3f',TC_1,TC_2);
if(TC_1>TC_2)
    printf('\n The second unit is more economical than first unit in this case.');
else
    printf('\n The first unit is more economical than second unit in this case.');
    end
