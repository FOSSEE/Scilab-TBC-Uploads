clc
clear
//Initialization of variables
y1=13.5
x1=0.135
x2=0.056
veca=[66 1.5 1.1 5.6 5.9 19.9]
//calculations
vecb=[veca y1]
vecb(5) = vecb(5) - 1/9*y1
vecb(6) = vecb(6) - 8/9*y1
vecc=vecb/(1-x1)
vecd=vecb/(1-x1-x2)
vecd(4)=0
vecd(7)=0
vecc(7)=0
s1=sum(vecc)
s2=sum(vecd)
//results
printf("With moisture as a separate item, ")
format ('v',6);vecb
disp(vecb)
printf("In Moisture free case, ")
format('v',4);vecc
disp(vecc)
printf("In Moisture and Ash free case, ")
format('v',5);vecd
disp(vecd)
printf("Total Mositure free content = %.1f percent",s1)
printf("\n Total Mositure and ash free content = %.1f percent",s2)
