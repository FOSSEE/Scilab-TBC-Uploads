
//Obtain path of solution file
path = get_absolute_file_path('solution10_21.sce')
//Obtain path of data file
datapath = path + filesep() + 'data10_21.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
trials = 0
//Load .csv file containing data of table10.1 on page 402
warning("off")
numeric = read_csv(path + filesep() + 'table10_1.csv')
while (gr~=1 & gr~=2 & gr~=3 & gr~=4)
    printf("\n")
    gr = input("Enter appropriate steel grade: ")
end
if (gr == 1 )
    col = 2
elseif (gr == 2)
    col = 3
elseif (gr == 3)
    col = 4
elseif (gr == 4)
    col = 5
end
row = 4
//Calculate the wire diameter d (mm)
for i = 1:1:%inf
    d = evstr(numeric(row, 1))
    Sut = evstr(numeric(row, col))
    //Calculate the permissible stress sigmat (N/mm2)
    sigmat = (r/100 * Sut)/fs
    //Calculate the spring index C
    C = D/d
    //Calculate the Wahl Factor for inner part of the spring Ki
    Ki = (4*C^2 - C - 1)/(4*C*(C - 1))
    //Calculate the bending stress sigmab (N/mm2)
    sigmab = (Ki * 32 * Mb)/(%pi * d^3)
    if (sigmab < sigmat)
        break()
    end
    row = row + 1
    trials = trials + 1
end
//Calculate the number of active coils N
N = (E * d^4)/(64 * D * k)
//Print results
printf("\nWire diameter(d) = %f mm\n",d)
printf("\nNumber of active coils(N) = %d\n",ceil(N))
