//To calculate the number of atoms per square millimetre
//in (100) plane the total number of atoms are n
n = (1/4)*4;
//A = a^2. number of atoms per mm^2 is n/a^2
printf("number of atoms in (100) plane are %d",n);
printf("number of atoms per mm^2 is 1/a^2");
//in (110) plane, area is sqrt(2)*a*a = sqrt(2)*a^2
printf("number of atoms in (100) plane is 1");
printf("unit area contains 1/(sqrt(2)*a^2) = 0.707/a^2 atoms/mm^2");
//in (111) plane, area = (1/2)*base*height = (1/2)*a*sqrt(2)*a*sqrt(2)*cosd(30)
x = cosd(30);
//area = (1/2)*a*sqrt(2)*a*sqrt(2)*x = 0.866*a^2 = 0.58/a^2
n1 = (1/360)*60*3;
//number of atoms per unit area is 0.5/(0.866*a^2) = 
printf("total number of atoms in (111) plane is %5.1f",n1);
printf("number of atoms per unit area is 0.58/a^2 atoms/mm^2");
