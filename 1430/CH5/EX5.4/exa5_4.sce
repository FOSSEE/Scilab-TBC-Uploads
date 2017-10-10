//Example 5.4
// Calculation for Series Capacitors
// Following Conditions at t=0
C_1=3*10^-6;
C_2=6*10^-6;
v_1=10;
q_1=C_1*v_1;
v_2=-10;
q_2=C_2*v_2;
v=v_1+v_2;
// We will calculate the new conditions at t1 > 0 When a source is connected to
// the terminals establishes v(t1)=30V
C_ser=(3*6)/(3+6)*(10^-6);
v_1_t1= 10 +(C_ser/C_1)*(30-0); // Voltage Divider Relation
q_1_t1=C_1*v_1_t1;// Charge voltage relationship
v_2_t1=-10+(C_ser/C_2)*(30-0);
q_2_t1=C_2*v_2_t1;
disp(v_1_t1,"Voltage across 3-micro farad capacitor(in Volts)=");
disp(q_1_t1,"Charge on 3-micro farad capacitor(in Coulomb)=");
disp(v_2_t1,"Voltage across 6-micro farad capacitor(in Volts)=");
disp(q_2_t1,"Charge across 6-micro farad capacitor(in Coulomb)=");
