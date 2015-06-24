exec('Example11_7.sce', -1)
clc

//Given that
t = 2.5  //in sec

//Sample Problem 11-9
printf("\n**Sample Problem 11-9**\n")
w = 0 + alpha*t
RE = 0.5* I* w^2
printf("The rotational kinetic energy of the disk will be %fJ", RE)