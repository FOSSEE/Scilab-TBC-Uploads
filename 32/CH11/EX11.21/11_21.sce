//pathname=get_absolute_file_path('11.21.sce')
//filename=pathname+filesep()+'11.21-data.sci'
//exec(filename)
//Ambient air temperature(in K):
Ta=27+273
//Temperature of burnt gases(in K):
Tg=630
//Air consumed at rate(in kg air per kg of coal):
m=15
//Ratio of actual draught to thereotical draught:
r=0.60
//Actual draught:
hw1=14
//Theoretical draught:
hw=hw1/r
//Height of chimney(in m):
H=hw/(353*(1/Ta-(m+1)/(m*Tg)))
printf("\n RESULT \n")
printf("\nHeight of chimney = %f m",H)