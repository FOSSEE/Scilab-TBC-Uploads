
//Obtain path of solution file
path = get_absolute_file_path('solution1_3.sce')
//Obtain path of data file
datapath = path + filesep() + 'data1_3.sci'
//Clear all
clc
//Execute the data file
exec(datapath)
//Part I: Starting Plan
printf('\nPart I: Starting Plan\n')
//Calculate the ratio factor Fi
Fi = (b/a)^(1/m)
//Calculate power ratings of models
//Initialise c
c = a
//Use 'for' loop in order to facilitate iterations 
for i = 1:1:(m + 1)
//Store the value in array r1
    r1(i) = c
    printf('\nRating of model %d = %f\n',i,a) 
//Obtain numbers in the series 
    a = a * Fi
//Round a
c = round(a)
end
//Part II: Expansion Plan
printf('\nPart II: Expansion Plan\n')
//Re-initialise a
a = 7.5 
//Calculate the ratio factor Fi
Fi = (b/a)^(1/n)
//Calculate power ratings of models
//Initialise c
c = a
//Use 'for' loop in order to facilitate iterations 
for j = 1:1:(n + 1)
//Store the value in array r2
    r2(j) = c
    printf('\nRating of model %d: %f = %f\n',i,a,c) 
//Obtain numbers in the series 
    a = a * Fi
//Round a
    c = round(a)
end
//Display power capacities of additional models
printf('\n%d additional models have following power ratings: \n',(j-i))
//Display the elements present in array r2 and absent in array r1
k = 1
for j = 1:1:(n + 1)
    for i = 1:1:(m + 1)
        if(r2(j)==r1(i))
            break
        end
    end
    if (r1(i) == b)
        r3(k) = r2(j)
        k = k + 1
    end
end
//Store k in l
l = k
for k = 1:1:l
    if(r3(k) ~= b)
        printf('\n%f\n',r3(k))
    else
        break
    end
end
