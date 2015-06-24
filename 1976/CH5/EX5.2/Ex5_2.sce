
//To determine the various temperature by changing the connection of the resistance elements
//Page 284
clc;
clear;

//Note that the value in kelvin of the first case in the textbook is wrong

//P is directly proportion to V^2 and H is directly propostional to KT^4
//Different Temperatures for different configurations
T1=1125; //Temperature in First Case
T2=poly(0,'T2');
T3=poly(0,'T3');
T4=poly(0,'T4');

//Multiplying Factors to the square of voltages
V1=1; //Line to Line Voltage;
V2=V1/2; //when connected in series first and then delta
V3=V1/(2*sqrt(3)); //when connected in series and then in star 
V4=V1/(sqrt(3)); //When connected in parallel and in star

//To find the power loss in each case
deff('x=pow(y)','x=(y^2)');
P1=pow(V1);
P2=pow(V2);
P3=pow(V3);
P4=pow(V4);

//To find the heat dissipated from each case
deff('x=heatdiss(y)','x=(y^4)');
H1=heatdiss(T1+273);
H2=heatdiss(T2+273);
H3=heatdiss(T3+273);
H4=heatdiss(T4+273);

//Polynomials to find the temperature in degree celsius
deff('x=temp(y,z)','x=(P1/y)-(H1/z)');
X2=temp(P2,H2);
X3=temp(P3,H3);
X4=temp(P4,H4);

//Temperature Numerical Value
T2=roots(X2(2));
T3=roots(X3(2));
T4=roots(X4(2));

//Only to consider Real Roots
T2=T2(4);
T3=T3(4);
T4=T4(4);

printf('The Temperature for the following configurations are:\n')
printf('Two Groups connected in series first and then in delta : %g degree Celsius\n',T2)

printf('Two Groups connected in series first and then in star : %g degree Celsius\n',T3)

printf('Two Groups connected in parallel first and then in star : %g degree Celsius\n',T4)
