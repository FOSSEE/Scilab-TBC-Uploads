//Exa 4.1
clc;clear;close;
format('v',8);
kVA=4000;//kVA//rating
f1_nl=50;//Hz(No load frequency of machine1)
f1_fl=47.5;//Hz(No load frequency of machine1)
f2_nl=50;//Hz(No load frequency of machine2)
f2_fl=48;//Hz(No load frequency of machine2)
L=6000;//kW(Load)
L1=poly(0,'L1');//Load of machine1
//f1_nl-(f1_nl-f1_fl)*L1/kVA=f1_nl-(f2_nl-f2_fl)*L2/kVA where L2=L-L1
L1=(f2_nl-f2_fl)*L/[(f1_nl-f1_fl)+(f2_nl-f2_fl)];//kW
L2=L-L1;//kW
disp("Part(a)");
disp(L1,"Load supplied by first machine(kW)");
disp(L2,"Load supplied by second machine(kW)");
disp("Part(b)");
L2=4000;//kW//Machine2 is supplying 4000kW
fdrop1=f1_nl-f1_fl;//Hz(frequency drop of machine 1)
fdrop2=f2_nl-f2_fl;//Hz(frequency drop of machine 2)
L1=L2*fdrop2/fdrop1;//kW//Load supplied by machine 1
L=L1+L2;//kW//Total Load
disp(L,"Total load supplied without getting over loaded(kW)")
