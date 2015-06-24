//simplification of boolean expressions//
//example 13.b//
clc
//clears the command window//
clear
//clears//
disp('given A=P+P''QR''+(Q+R)''')
disp('A=P+P''QR''+Q''.R''');//DE MORGAN'S LAW//
disp('A=P+R''(P''Q+Q'')')
disp('A=P+R''[P''Q+Q''(P+P'')]')
disp('A=P+R''[P''(Q+Q'')+PQ'']')
disp('A=P+R''[P''+PQ]')
disp('A=P+R''{(P''+P).(P''+Q'')}')
disp('A=P+R''(P''+Q'')')
disp('A=P+P''R''+Q''R''')
disp('A=(P+P'').(P''+R'')+Q''R''')
disp('A=1.(P+R'')+Q''R''')
disp('A=P+R''+Q''R''')
disp('A=P+R''+Q''R''')
disp('A=P+R''(1+Q'')')
disp('the simplified expression is:')
disp('A=P+R''')
