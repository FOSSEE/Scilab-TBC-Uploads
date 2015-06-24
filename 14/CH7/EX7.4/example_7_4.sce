//chapter 7
//Example 7.4
//Page 177
//matrixmanipulation
clear;clc;
//admittances
Ya = -%i*0.8;
Yb = Ya;
Yc= Ya;
Yd = -%i*5;
Ye = -%i*8;
Yf = -%i*4;
Yg = -%i*2.5;
Yh = Yd;
//Self-admittances
Y11 = Yd + Yf + Ya;
Y22 = Yh + Yg + Yb;
Y33 = Ye + Yg + Yf;
Y44 = Yd + Ye + Yh;
//Mutual-admittances
Y12 = 0;Y21 = Y12;
Y13 = -Yf;Y31 = Y13;
Y14 = -Yd;Y41 = Y14;
Y23 = -Yg;Y32 = Y23;
Y24 = -Yh;Y42 = Y24;
Y34 = -Ye;Y43 = Y34;
//Bus Impedance Matrix
Y = [Y11 Y12 Y13 Y14;Y21 Y22 Y23 Y24;Y31 Y32 Y33 Y34;Y41 Y42 Y43 Y44];
//Removing node 4
[row_4,column_4] = size(Y)
Y_bus_4 = zeros(row_4-1,column_4-1);
for a = 1:row_4-1
    for b = 1:column_4-1
    Y_bus_4(a,b) = Y(a,b) - (Y(a,column_4) * Y(row_4,b) / Y(row_4,column_4))
    end
end
disp('Y bus matrix after removing node four')
disp(Y_bus_4)
//Removing node 3
[row_3,column_3] = size(Y_bus_4)
Y_bus_3 = zeros(row_3-1,column_3-1);
for c = 1:row_3-1
    for d = 1:column_3-1
    Y_bus_3(c,d) = Y_bus_4(c,d) - (Y_bus_4(c,column_3) * Y_bus_4(row_3,d) / Y_bus_4(row_3,column_3))
    end
end
disp('Y bus matrix after removing node three')
disp(Y_bus_3)
