//caption:Find output voltage of an ac LVDT for (a)-0.3 inch(b)-0.25 inch
//Ex3.3
clc
clear
close
R=-0.5//range of core displacement(in inch)
V=-5.2//output voltage(in V)
D1=-0.3//displacement(in inch)
D2=-0.25//displacement(in inch)
V1=(D1/R)*V
disp(V1,'(a)output voltage at -0.3 inch(in V)=')
V2=(D2/R)*V
disp(V2,'(b)output voltage at -0.25 inch(in V)=')