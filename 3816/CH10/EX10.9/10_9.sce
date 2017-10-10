clc;
clear;
W=23400;//KVA rating
pf=0.8;
Lb=68;//Bearing friction loss
Lv=220;//Windage loss
Lc=165;//Core loss
Lw=200;//WInding loss
Li=62;//I^2R loss
Le=14;//Exciter loss
Ll=Lw-Li;
disp(Li,'Thye load loss is:')
Lt=763;//Sum of totallosses
Po=W*pf;//output
disp(Po,'The output is:')
Pi=Po+Lt;
disp(Pi,'The input is:')
eff=Po/Pi;
disp(eff,'The efficiency is:')
