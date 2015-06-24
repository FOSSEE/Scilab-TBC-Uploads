//example1.23
clc
disp("The branch currents are shown in the fig 1.93(a)")
disp("Applying KVL to the two loops,")
disp("-2(I1)-5(I2)+12=0")
disp("i.e   2(I1)+5(I2)=12  ..(1)")
disp("-4(I1-I2)-6(I1-I2)+5(I2)=0")
disp("i.e   -10(I1)+15(I2)=0")
disp("Solving equation (1) and (2),")
disp("2(I1)+5(10/15)(I1)=12")
i=9/4
format(5)
disp(i,"I1(in A)=")
disp("put this value of I1 in eq (2),we get")
i=(10/15)*2.25
disp(i,"I2(in A)=(10/15)*2.25=")
disp("   Branch        Current          voltage drop")
disp("    A-B         I1=2.25A           2(I1)=4.5V")
disp("    B-C        I1-I2=0.75A        4(I1-I2)=3V")
disp("    C-D        I1-I2=0.75A        6(I1-I2)=4.5V")
disp("    B-E          I2=1.5A           5(I2)=7.5V")
disp("    F-A         I1=2.25A           12V source")
