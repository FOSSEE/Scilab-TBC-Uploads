clc
T1=303; //K
T3=1073; //K
C=45000; //kJ/kg
cp=1; //kJ/kg K
y=1.4;

T2=sqrt(T1*T3);
T4=T2;

//W_turbine-W_compressor=m_f*C*n=100;

m_f=100/C/(1-(T4-T1)/(T3-T2));
disp("m_f=")
disp(m_f)
disp("kg/s")

m_a=(100-m_f*(T3-T4))/(T3-T4-T2+T1);
disp("m_a=")
disp(m_a)
disp("kg/s")