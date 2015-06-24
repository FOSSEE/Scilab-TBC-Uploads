
//Obtain path of solution file
path = get_absolute_file_path('solution14_2.sce')
//Obtain path of data file
datapath = path + filesep() + 'data14_2.sci'
//Clear all 
clc
//Execute the data file
exec(datapath)
//Calculate the kW rating for the chain
kW = kWd * (eta/100) * Ks/(K1 * K2)
printf("\nChoose appropriate chain from table 14.2 on page 550 from obtained kw value at a given rpm\n")
printf("\nHere, for %f kW rating at %f rpm, chain-16A (11.63 kW rating) is chosen\n",kW,n1)
