
//Obtain path of solution file
path = get_absolute_file_path('solution5_11.sce')
//Obtain path of data file
datapath = path + filesep() + 'data5_11.sci'
//Obtain path of function file
funcpath = path + filesep() + 'functions5_11.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
exec(funcpath,[-1])
//Plot S-N Curve
funcprot(0)
[a, b, c, d] = SNplot(Sut,Se)
//Calculate N1, N2 and N3
for i = 1:1:3
    Nval(i) = d + (((c - d)*(log10(stress(i)) - b))/(a - b))
    N(i) = 10^Nval(i)
end
//Calculate fatigue life of component
Nfinal = 0
for i = 1:1:3
    Nfinal = Nfinal + ((time(i)/100)/N(i))
end
Nfinal = (1/Nfinal)
//Print results
printf('\nLife of component(Nfinal) = %f cycles\n',Nfinal)
