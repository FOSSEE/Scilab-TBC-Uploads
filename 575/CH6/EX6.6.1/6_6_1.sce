clc
pathname=get_absolute_file_path('6_6_1.sce')
filename=pathname+filesep()+'661.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
Dbar=DA*DW/(x*DW + (1-x)*DA)
mass1=V1*Dbar
mass2=V2*DC
disp("C balance")
m4=mass2
printf(" \n m4=%f",m4)
disp("W balance")
m2=(1-x)*mass1
printf(" \n m2=%f",m2)
disp("A balance")
printf("m1+m3=%f * %f",x,mass1)
disp("Distribution Cooefficient ,K=m3*(m1+m2)/m1*(m3+m4)")
disp("On solving, ")
m1=2.7
m3=16.8
percentage=m3*100/(x*mass1)
printf(" \n m1=%f",m1)
printf(" \n m3=%f",m3)
printf(" \n percentage of acetone transferred to chloroform=%f",percentage)