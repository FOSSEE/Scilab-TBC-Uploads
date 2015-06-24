Psat1 = 0.01705; hg1 = 2528.9; // at 15 degree
Psat2 = 0.05628; hg2 = 2565.3; // At 35 degree
fi1 = 0.55;
Pw1 = fi1*Psat1;
fi2 = 1;
Pw2 = fi2*Psat2;
P = 1;
W1 = (0.622*Pw1)/(P-Pw1);
W2 = (0.622*Pw2)/(P-Pw2);
MW = W2-W1;
t2 = 35; t1 = 15; 
m_dot = 2.78;
cpa = 1.005;
h43 = 35*4.187; // h4-h3
h5 = 14*4.187;
m_dot_w = (-(W2-W1)*h5 - W1*hg1 + W2*hg2 + cpa*(t2-t1))/(h43) ;
R = m_dot/m_dot_w ;
MW = (W2-W1)*R;
RWA = R*(1+W1);
R = 0.287; T = 288; 
V_dot = (RWA*R*T)/(P*1e02) ; // Pressure is in kilo Pascal
disp("kg/s",MW,"Make up water flow rate is")
disp("m3/s",V_dot,"Volume flow rate of air is")