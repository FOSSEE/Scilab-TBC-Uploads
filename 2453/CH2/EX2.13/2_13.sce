//To calculate the ratio of the seperation between successive lattice planes
h1 = 1;
k1 = 0;
l1 = 0;    //for (100) plane
x1 = sqrt(h1^2+k1^2+l1^2);
h2 = 1;
k2 = 1;
l2 = 0;    //for (110) plane 
x2 = sqrt(h2^2+k2^2+l2^2);
h3 = 1;
k3 = 1;
l3 = 1;    //for (111) plane
x3 = sqrt(h3^2+k3^2+l3^2);
//d = a/sqrt(h^2+k^2+l^2)
//d100:d110:d111 = a:a/sqrt(2):a/sqrt(3)
//d100:d110:d111 = 1:1/sqrt(2):1/sqrt(3) = 1:0.71:0.58
printf("ratio of the seperation between successive lattice planes is 1:0.71:0.58"); 
