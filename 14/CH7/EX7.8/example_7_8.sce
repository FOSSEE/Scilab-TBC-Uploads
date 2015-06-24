//chapter 7
//Example 7.8
//Page 187
//directZbus
clear;clc;
//Given Impedances
Z10 = %i*1.2;
Z21 = %i*0.2;
Z23 = %i*0.15;
Z13 = %i*0.3;
Z30 = %i*1.5;
//1*1 bus
Zbus = Z10;
disp('1X1 bus impedance matrix with bus 1 and reference bus')
disp(Zbus)
//to establish bus 2
[m,n] = size(Zbus)
for i = 1:m
    for j = 1:n
    Zbus(2,i) = Zbus(i,j);
    Zbus(i,2) = Zbus(i,j)
    end
end
Zbus(2,2) = Z10 + Z21;
disp('After establishing bus 2')
disp(Zbus)
//to establish bus 3 with impedance connecting it to bus 1
[m,n] = size(Zbus)
for i = 1:m
    for j = 1
    Zbus(3,i) = Zbus(i,j);
    Zbus(i,3) = Zbus(i,j);
    end
end
Zbus(3,3) = Z10 + Z13;
disp('Connecting a impedance between bus 3 and 1')
disp(Zbus)
//to add an impedance from bus 3 to reference
[m,n] = size(Zbus)
for i = 1:m
    for j = 1:n
    Zbus(4,i) = Zbus(i,j);
    Zbus(i,4) = Zbus(i,j)
    end
end
Zbus(4,4) = Zbus(3,3) + Z30;
disp('After adding impedance from bus 3 to reference')
disp(Zbus)
[m1,n1] = size(Zbus);
Z_new = zeros(m1-1,n1-1);
for c = 1:m1-1
    for d = 1:n1-1
    Z_new(c,d) = Zbus(c,d) - ((Zbus(c,4)*Zbus(4,d)) / Zbus(4,4));
    end
end
disp('After elemination of 4th row and column')
disp(Z_new)
//to add the impedance between buses 2 and 3
Z_new(1,4) = Z_new(1,2) - Z_new(1,3);
Z_new(2,4) = Z_new(2,2) - Z_new(2,3);
Z_new(3,4) = Z_new(3,2) - Z_new(3,3);
Z_new(4,1) = Z_new(1,4);
Z_new(4,2) = Z_new(2,4);
Z_new(4,3) = Z_new(3,4);
Z_new(4,4) = Z23 + Z_new(2,2) + Z_new(3,3) - 2*Z_new(2,3);
disp('After adding impedance between buses 2 and 3')
disp(Z_new)
[m1,n1] = size(Z_new);
Zbus_new = zeros(m1-1,n1-1);
for c = 1:m1-1
    for d = 1:n1-1
    Zbus_new(c,d) = Z_new(c,d) - ((Z_new(c,4)*Z_new(4,d)) / Z_new(4,4));
    end
end
disp('The Bus Impedance Matrix is')
disp(Zbus_new)