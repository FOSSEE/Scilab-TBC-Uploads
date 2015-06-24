//example1.19
clc
disp("Using the loop analysis, (fig 1.88(a) see on next page)")
disp("Applying KVL to the three loops,")
disp("-(I1)-(I1)-2(I1)+2(I3)+5-2(I1)=0  i.e  -6(I1)+2(I3)= -5   ...(1)")
disp("-2(I3)+2(I1)-2(I3)-5-2(I3)-(I3)+I2=0  i.e   2(I1)+I2-7(I3)=5   ...(2)")
disp("-2(I2)-(I2)+(I3)-2(I2)+5=0   i.e  -5(I2)+I3= -5  ...(3)")
disp("Solving equation (1),(2)and (3)")
disp("so, putting equations(1) and (3) in eq (2),we get")
disp("10(I3)+25+3(I3)+15-105(I3)=75")
disp("Therefore, -92(I3)=35")
i=(-35)/92
format(7)
disp(i,"Therefore, I3(in A)=")
disp("Now, putting value of I3 in equations (1) and (2) :")
i=((-35/46)+5)/6
disp(i,"Therefore, I1(in A)=")
i=((-35/92)+5)/5
disp(i,"and, I2(in A)=")
disp("These are the currents in all the sources. I3 is negative hence its direction is opposite to that assumed earlier.")
