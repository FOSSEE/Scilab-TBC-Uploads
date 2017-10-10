clc; clear; close;

gate_cap=2*0.5;//in fF
wire_cap1=30*0.2/20;//in fF
drain_cap=0.5*0.5;//in fF
wire_cap2=40*0.2*0.1/2;//in fF
con_cap=0.5/2;//in fF
row_cells=256;
col_cells=256;
Cword=row_cells*(2*gate_cap+wire_cap1);
disp(Cword,'Capacitance of wordline(in fermifarads)=');
Cbit=col_cells*(drain_cap+wire_cap2+con_cap);
disp(Cbit,'Capacitance of Bitline(in fermifarads)=');
//answers vary due to roundoff error
