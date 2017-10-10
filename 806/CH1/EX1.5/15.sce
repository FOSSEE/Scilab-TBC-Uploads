clc
pathname=get_absolute_file_path('15.sce')
filename=pathname+filesep()+'15.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\15.txt')
disp("With regard to Example 1.4 suppose the cylinder is a water quality sample bottle used to collect water samples at a predetermined depths.At deep Depths the sample Bottle has a smaller volume to collect 995 cm^3 due to compression.Suppose that analysis reveals that 15 mg of sediment are collected.What would be the difference in concerntration data measured shipboard where the pressure is atmospheric versus the in situ depths where the sample was collected?")
disp("Solution:")
C1=M/V1//Concerntration of shipboard
C2=M/V2//concerntration of in situ depth
disp("mg/cm^3",C1,"Concerntration of shipboard")
disp("mg/cm^3",C2,"Concerntration of in situ depth")
diary(0)
