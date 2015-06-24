clc
T_w1=323; //K
T_w2=343; //K
T_o1=513; //K
T_o2=363; //K
SG_oil=0.82;
c_po=2.6; //kJ/kg K
c_pw=4.18; //kJ/kg K
T0=300; //K
m_o=1; //kg

//Heat lost by oil=Heat gained by water
m_w=(m_o*c_po*(T_o1-T_o2))/(c_pw*(T_w2-T_w1));

dS_w=m_w*c_pw*log(T_w2/T_w1);
dS_o=m_o*c_po*log(T_o2/T_o1);

dAE_w=m_w*[c_pw*(T_w2-T_w1)]-T0*dS_w;
dAE_o=m_o*[c_po*(T_o2-T_o1)]-T0*dS_o;

// Loss in availability E=
E=dAE_w+dAE_o;
disp("Loss in availability =")
disp(E)
disp("kJ")