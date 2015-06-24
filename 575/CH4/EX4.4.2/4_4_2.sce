clc
pathname=get_absolute_file_path('4_4_2.sce')
filename=pathname+filesep()+'442.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Using Balances around two-extraxtor system,")
disp("Balance on total mass,")
printf("%d + %d + %d = %f + m1+m3",massin,M1,M2,massout)
disp("Balance on A")
printf("%d * %f = %f * %f + m1 %f + m3 %f",massin,inputx,massout,outputxA,m1xA,m3xA)
A=[1 1;m1xA,m3xA]
b=[massin+M1+M2-massout;massin*inputx - massout*outputxA]
C=A\b
m1=C(1,1)
m3=C(2,1)
printf(" \n m1=%f Kg",m1)
printf(" \n m3=%f Kg",m3)
disp("Balance on M")
xM1=(massin+M2-massout*outputxM-m3*m3xM)/m1
printf("xM1=%f kg MIBK/kg",xM1)
disp("Balances around Extract mixing point, ")
disp("Balance on A")
mA4=m1*m1xA+m3*m3xA
printf(" \n mA4=%f Kg Acetone",mA4)
disp("Balance on M")
mM4=m1*xM1+m3*m3xM
printf(" \n mM4=%f Kg MIBK",mM4)
disp("Balance on W")
mW4=m1*(m1xM-xM1) + m3*m3xW
printf(" \n mW4=%f Kg Water",mW4)
disp("Balances around the First extractor")
disp("Balance on  A")
mA2=massin*inputx-m1*m1xA
printf(" \n mA2=%f Kg Acetone",mA2)
disp("Balance on  M")
mM2=massin-x1*xM1
printf(" \n xM1=%f Kg MIBK",xM1)
disp("Balance on  W")
mW2=massin*inputx- m1*(m1xM-xM1)
printf(" \n mW2=%f Kg Water",mW2)