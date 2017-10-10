// Example 24_1
clc;funcprot(0);
//Given data
P_1=1;// bar
P_2=5;// bar
T_1=27+273// K
T_3=650+273;// K
C_p=1;// kJ/kg.°C
//C_p=C_pg=C_pa;
r=1.4;//The specific heat ratio
m=5;//kg/s
//Air-fuel ratio,AF_r=m_air/m_fuel
AF_r=60/1;
n_c=0.80;// Isentropic efficiency of compressor
n_t=0.85;// Isentropic efficiency of turbine

//Calculation
//T'2=T_2a;T'4=T_4a;
T_2a=T_1*(P_2/P_1)^((r-1)/r);// K
T_2=((T_2a-T_1)/n_c)+T_1;// Modified equation in K
T_4a=T_3*(P_1/P_2)^((r-1)/r);// K
T_4=T_3-(n_t*(T_3-T_4a));// Modified equation in K
n_th=(((AF_r+1)*(T_3-T_4))-(AF_r*(T_2-T_1)))/((AF_r+1)*(T_3-T_2));
n_th=n_th*100;// %
printf('The thermal efficiency of the cycle,n_th=%0.0f percentage\n',n_th);
W=(C_p*(1+60)*(T_3-T_4))-(C_p*60*(T_2-T_1));//kJ/kg of fuel
P=(W*m)/1000;// MW
printf('The power generating capacity of the plant,P=%0.1f MW\n',P);
// The answer vary due to round off error

