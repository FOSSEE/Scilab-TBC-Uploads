clc;funcprot(0);//Example 8.9
//Initilisation of Variables
Tci=25;......//Inlet temparature of cooling water in degrees celcius
Tco=75;......//Outlet temparature of cooling water in degrees celcius
Th=120;......//Temparature of saturated steam in degrees celcius
//calculations
LMTDp=((Th-Tci)-(Th-Tco))/log((Th-Tci)/(Th-Tco));......//Log mean temparature diffrence of steam in parallel flow arrangement in K
LMTDc=((Th-Tco)-(Th-Tci))/log((Th-Tco)/(Th-Tci));......//Log mean temparature diffrence of steam in counter flow arrangement in K
R1=(Th-Th)/(Tco-Tci);....//Resistanfce from counter flow 
R2=(Tco-Tci)/(Th-Tci);....//Resistanfce from counter flow
F=1;......//From the graph F and R1 and R2
disp(LMTDp,"(i)Log mean temparature diffrence of steam in parallel flow arrangement in K:") 
disp(LMTDc,"(ii)Log mean temparature diffrence of steam in counter flow arrangement in K:")
disp("(iii)In a condenser, phase changer takes place at constant temparature, therefore, for all arrangements fir all LMTD is same and the heat transfer is also same ")
