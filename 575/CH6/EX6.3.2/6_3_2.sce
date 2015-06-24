clc
pathname=get_absolute_file_path('6_3_2.sce')
filename=pathname+filesep()+'632.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
P=y*PT
if(P<760)
    disp("The Vapour is Super heated")
elseif(P=760) 
    disp("The vapour is At Dew point")
else
    disp("The vapour is not Super heated")
end
disp("From tables Tdp=90 C")
disp("Superheat = 100-90=10 C ")
disp("Using Raoult law at the outlet")
y1=355/PT
printf("y1=%f",y1)
disp("Balance on Dry Air")
n2=basis*(1-y)/(1-y1)
printf("n2=%f mol",n2)
disp("Total mole balance")
n1=basis-n2
printf("n1=%f mol",n1)
printf(" \n Percentage condesation=%f",n1*100/(y*basis))
Psaturation=760/y
printf("\n Any increase in pressure above %d mm of Hg must cause condensation ",Psaturation)
printf(" \n For the next part of the problem use the same code by modifying PT to be 8500 mm of Hg")