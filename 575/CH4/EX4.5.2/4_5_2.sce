clc
pathname=get_absolute_file_path('4_5_2.sce')
filename=pathname+filesep()+'452.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
m6x=m5x
printf("Given, m4=%f (m4+m5)",x)
disp("using Overall K2CrO4 balance, ")
printf("%f * %f = m4+ %f m5",feedx,feed,m6x)
A=[1-x,-x;1,m6x]
b=[0;feedx*feed]
C=A\b
m4=C(1,1)
m5=C(2,1)
printf(" \n m4=%f K2CrO4 crystals/h",m4)
printf(" \n m5=%f entrained solution/h",m5)
disp("Overall Total mass balance , ")
m2=feed-m4-m5
printf("m2=%f Kg H2O evaporated/h",m2)
disp("Mass balance around the crystallizer,")
disp("m3=m4+m5+m6")
disp("Water balance around the crystallizer, ")
printf(" %f m3= %f m5 + %f m6",1-m3x,1-m5x,1-m6x)
D=[1 -1;1 (-1+m6x)/(1-m3x)]
e=[m4+m5;(1-m5x)*m5/(1-m3x)]
F=D\e
m3=F(1,1)
m6=F(2,1)
printf(" \n m3=%f Kg/h fed to the crystallizer",m3)
printf(" \n m6=%f Kg/h ",m6)
ratio=m6/feed
printf(" \n ratio=%f Kg recycle/ Kg fresh feed",ratio)
disp("mass balance around Recycle-fresh feed mixing point, ")
m1=feed+m6
printf("m1=%f kg/h feed to the evaporator",m1)
disp("With out recycle, ")
disp("m3=622 Kg/h")
disp("m5=2380 Kg/h")