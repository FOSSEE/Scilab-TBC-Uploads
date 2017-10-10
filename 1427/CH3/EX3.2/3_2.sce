//ques-3.2
//Calculating number of molecules of ethene in sample and number of molecues of polyethene produced
clc
m=28;//mass of ethene (in g)
deg=1000;//average degree of polymerisation

//Part (i)
n1=(m/28)*6.023;//number of molecules of ethene (x10^23)
printf("The number of molecules of ethene in sample are %.3f x 10^23.\n",n1);

//Part (ii)
n2=n1/deg;//number of molecules of polyethene (x10^23)
printf(" The number of polyethene molecules produced are %.3f x 10^20.",n2*1000);

