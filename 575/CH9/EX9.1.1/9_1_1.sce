clc
pathname=get_absolute_file_path('9_1_1.sce')
filename=pathname+filesep()+'911.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("Part 1")
E1= ndot/4
deltaH1=E1*Hr1
printf("enthalpy change=%E Kj/s",deltaH1 )
disp("part2")
Hr2=2*Hr1
E2=ndot/8
deltaH2=E2*Hr2
printf("Enthalpy change=%E kj/s",deltaH2)
disp("part 3")
Hr3=Hr1+5*HvWater+HvButane
deltaH3=E1*Hr3
printf("Enthalpy change=%E kj/s",deltaH3)