// Example 2.1
// Audio Volume Control
// It is given that amplifier draws no input current i.e i_W= 0
// From figure 2.4, v_in(t) is related to v_s(t) by voltage divider expression
R_AW=poly(0,'R_AW');
p=R_AW/(5000)-0.6
R_AW=roots(p);
// v_in=(R_AW*v_s(t))/5000, it is required that v_out(t)=60v_s(t)
// from above two relation we get v_in(t)=0.6v_s(t), using this relation we get R_AW
disp(R_AW,"Value of potentiometer resistance(in Ohms)=")
