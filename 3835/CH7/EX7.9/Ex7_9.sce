clear
//
//this problem has few notations and values taken from problem above
//case a
//the generator output becomes 1.5*6600*200
o=1980 //generator output
//the power angle is obtaimed as 16.42
//applying cosine to the triangle in the problem gives ixs=2853.02
//hence armature current is
i=2853.02/8
printf("\n armature current= %0.5f  A",i)
//case b
pf=1980000/(6600*356.63) //power factor=o/(V*I)
printf("\n power factor= %0.5f  ",pf)
