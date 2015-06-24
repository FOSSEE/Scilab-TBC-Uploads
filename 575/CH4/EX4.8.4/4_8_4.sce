clc
pathname=get_absolute_file_path('4_8_4.sce')
filename=pathname+filesep()+'484.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("N2 balance")
na=basis*xN2/0.79
printf("na=%f mol air",na)
disp("Atomic C balance")
nc=basis*xCO + basis*xCO2
printf("nc=%f mol C",nc)
disp("Atomic O balance")
nw=0.21*na*2-basis*(xCO + xCO2*2 + xO2*2)
printf("nw=%f mol oxygen",nw)
disp("Atomic H2 balance")
nh=nw*2
printf("nh=%f mol H2",nh)
ratio=nh/nc
printf("\n C/H ratio in fuel=%f mol H/mol C",ratio)
disp("percent excess air")
nO2theoretical=nc + nh/4
printf("nO2 theoretical=%f mol O2",nO2theoretical)
nO2fed=0.21*na
printf(" \n nO2fed=%f mol O2",nO2fed)
percent=(nO2fed-nO2theoretical)*100/nO2theoretical
printf("\n percentage excess air=%f excess air",percent)