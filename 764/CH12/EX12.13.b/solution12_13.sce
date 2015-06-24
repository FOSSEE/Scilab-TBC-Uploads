
//Obtain path of solution file
path = get_absolute_file_path('solution12_13.sce')
//Obtain path of data file
datapath = path + filesep() + 'data12_13.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the torque capacity of one pad mt (N-m)
mt = Mt/(nb * np)
//Read the csv file containing table 12.1
numeric = read_csv(path + filesep() + 'table12_13.csv')
//Obtain the value of delta
for row = 3:1:%inf
    if (evstr(numeric(row,1)) == r)
        delta = evstr(numeric(row,2))
        break
    end
end
//Calculate the radius of the pad R (mm)
R = (mt * 1000/(mu * pavg * %pi * (delta/r)))^(1/3)
//Print results
printf("\nRadius of the pad(R) = %f mm\n",R)
