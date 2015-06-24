clc
pathname=get_absolute_file_path('9_5_4.sce')
filename=pathname+filesep()+'954.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Carbon Balance")
printf("%d * %f *2 + %d * %f *2=2 n1+2 n2",basis,x,basis,1-x)
disp("Hydrogen Balance")
printf("%d * %f *6 + %d * %f *4 = 6 n1+4 n2+2 n3",basis,x,basis,1-x)
disp("Energy Balance")
printf("%d = %f n1  %f n2 + %f n3 -%d * %f -%d* %f",Q,HoutEthanol,HoutEthanone,HoutHydrogen,NinEthanol,HinEthanol,NinEthanone,HinEthanone)
A=[1 1 0;3 2 1;216.81 150.9 -6.595]
b=[150;435;28412]
C=A\b
n1=C(1,1)
printf(" \n n1=%f mol Ethanol/s",n1)
n2=C(2,1)
printf(" \n n2=%f mol Ethanone/s",n2)
n3=C(3,1)
printf(" \n n3=%f mol Hydrogen/s",n3)
disp("The solutions in the Text are Wrong")
fraction=(NinEthanol-n1)/NinEthanol
printf("Fractional conversion of Ethanol=%f",fraction)