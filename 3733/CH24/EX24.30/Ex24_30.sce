// Example 24_30
clc;funcprot(0);
//Given data 
T_1=15+273;// K
p_1=1;// bar
R_c=5;//Compression ratio
T_3=800+273;// K
T_9=265+273;// K
W=625;// kW
e=0.75;// Effectiveness of heat exchanger 
n_c=0.86;// Isentropic efficiency of compressor
n_t=0.86;// Isentropic efficiency of both turbine
n_t1=n_t;
n_t2=n_t;
m_a=5.85;// kg/sec
C_p=1;// kJ/kg.K
C_pa=C_p;
C_pg=C_p;
r=1.4;// Specific heat ratio

//Calculation
R_t1=R_c;
R_t2=R_c;
dT_21=(T_1/n_c)*(((R_c)^((r-1)/r))-1);// K
T_2=T_1+dT_21;// K
W_c=m_a*C_pa*(T_2-T_1);// The work done in the compressor in kW
dT_34=T_3*n_t1*(1-((1/R_t1)^((r-1)/r)));//(T_3-T_4) K
m_a1=W_c/(dT_34);// kg/sec
P_ta=(m_a1/m_a)*100;// Percentage of total air supplied to turbine 1 in %
m_a2=m_a-m_a1;// kg/sec
// Assume T_7=y(1); T_8=y(2);
function[X]=Temperature8(y)
    X(1)=(m_a*C_pg*(y(1)-T_2))-(m_a*C_pg*(y(2)-T_9));
    X(2)=((y(1)-T_2)/(y(2)-T_2))-e;
endfunction
y=[100 100];
z=fsolve(y,Temperature8);
T_8=z(2);// K
T_7=z(1);// K
// Assume T_5=x(1); T_6=x(2);
function[Y]=Temperature5(x)
    Y(1)=(x(1)*n_t2*(1-((1/R_t2)^((r-1)/r))))-(x(1)-x(2));
    Y(2)=(m_a2*C_pa*(x(1)-x(2)))-W;
endfunction
x=[100 100];
q=fsolve(x,Temperature5);
T_5=q(1);// K
T_6=q(2);// K
n_th=(W/(((m_a1*C_pa*(T_3-T_7))+(m_a2*C_pa*(T_5-T_6)))))*100;//The over all efficiency of the plant in %
printf('\nPercentage of total air passed to the compressor turbine=%0.1f percentage \nThe combined temperature of of the exhaust gases entering into the heat exchanger,T_8=%0.0f K \nThe temperature of gases entering into the power turbine,T_5=%0.0f K \nThe over all efficiency of the plant=%0.1f percentage',P_ta,T_8,T_5,n_th);
// The answer vary due to round off error
