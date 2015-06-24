
//Obtain path of solution file
path = get_absolute_file_path('solution2_1.sce')
//Obtain path of data file
datapath = path + filesep() + 'data2_1.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Calculate weightage points for all materials
//U - Ultimate tensile strength, H - Hardenability index, C - Cost
//Store the summations of each category in Uweigh, Hweigh and Cweigh respectively
Uweigh = 0
Hweigh = 0
Cweigh = 0
for i = 1:1:4
    Uweigh = Uweigh + U(i)
    Hweigh = Hweigh + H(i)
    Cweigh = Cweigh + (C(i)^(-1))
end
//Store percent strength for each material in Uper, Hper and Cper arrays according to respective categories
//Store points for each material in Up, Hp and Cp arrays according to respective categories
for i = 1:1:4
    Uper(i) = U(i)/Uweigh
    Up(i) = Uper(i) * Uw
    Hper(i) = H(i)/Hweigh
    Hp(i) = Hper(i) * Hw
    Cper(i) = (C(i)^(-1))/Cweigh
    Cp(i) = Cper(i) * Cw
end
//Store total points for each material in t array
for i = 1:1:4
    t(i) = Up(i) + Hp(i) + Cp(i)
end
//Print result table. Refer Table 2.14 on page 53
printf('\n\t|Material Property\t|Low alloy steel\t|Plain carbon steel\t|Stainless steel\t|Chromium steel\n')
printf('\na)\tTensile Strength')
printf('\n\tPer cent')
for i = 1:1:4
    printf('\t\t%0.3f\t',Uper(i))
end
printf('\n\tPoints')
for i = 1:1:4
    printf('\t\t\t%0.3f',Up(i))
end
printf('\n\nb)\tHardenability')
printf('\n\tPer cent')
for i = 1:1:4
    printf('\t\t%0.3f\t',Hper(i))
end
printf('\n\tPoints')
for i = 1:1:4
    printf('\t\t\t%0.3f',Hp(i))
end
printf('\n\nc)\tCost')
printf('\n\tPer cent')
for i = 1:1:4
    printf('\t\t%0.3f\t',Cper(i))
end
printf('\n\tPoints')
for i = 1:1:4
    printf('\t\t\t%0.3f',Cp(i))
end
printf('\n\n\tTotal Points')
for i = 1:1:4
    printf('\t\t%0.3f\t',t(i))
end
//Store all values of t in s array
for i = 1:1:4
    s(i) = t(i)
end
//Find the material with largest value of total points using s array
for i = 1:1:3
    if (s(i)>s(i+1)) then
        s(i+1) = s(i)
    end
end
//Largest value is obtained when i becomes 3 and the value is stored in s(i+1)
//Display the best material
choice = s(i+1)
if(choice == t(1))
    printf('\n\nLow alloy steel is the best material for the component\n')
    else if  (choice == t(2))
            printf('\n\nPlain carbon steel is the best material for the component\n')
    else if  (choice == t(3))
            printf('\n\nStainless steel is the best material for the component\n')
    else
            printf('\n\nChromium steel is the best material for the component\n')
end
