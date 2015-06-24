//Section-12,Example-1,Page no.-SS.39
//To calulate d_200 and d_111 in Lead.
clc;
a=4.95
h_1=2
k_1=0
l_1=0
h_2=1
k_2=1
l_2=1
d_200=a/(sqrt((h_1)^2 + (k_1)^2 + (l_1)^2))
disp(d_200,'In Angstrom')
d_111=a/(sqrt((h_2)^2 + (k_2)^2 + (l_2)^2))
disp(d_111,'In Angstrom')
