clear; clc; close;

Id1 = 2*10^(-3);//A
Id2 = 25*10^(-3);//A

Delta_Id1 = (4-0)*10^(-3);//A
Delta_Vd1 = 0.76-0.65;//V
rd1 = Delta_Vd1/Delta_Id1;

Delta_Id2 = (30-20)*10^(-3);//A
Delta_Vd2 = 0.80-0.78;//V
rd2 = Delta_Vd2/Delta_Id2;

//From graph
Vd1 = 0.7;//V
Vd2 = 0.79;//V

Rd1 = Vd1/Id1;
Rd2 = Vd2/Id2;

disp(rd1,'ac resistance in part a(in ohm) is : ');
disp(rd2,'ac resistance in part b(in ohm) is : ');
disp(Rd1,'dc resistance in part a(in ohm) is : ');
disp(Rd2,'dc resistance in part b(in ohm) is : ');

