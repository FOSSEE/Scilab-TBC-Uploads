//variable initialization
rP = 4;
rD = 5;
LP = 1;
LP = 2;
jP = [5/2, 3/2, 1/2];
jD = [4, 3, 2, 1, 0];

//Calculation
SP = (rP-1)/2;
SD = (rD-1)/2;
i=1;
for i=1:3
    JP(i) = sqrt(jP(i)*(jP(i)+1));
end
i=1;
for i=1:5
    JD(i) = sqrt(jD(i)*(jD(i)+1));
end

printf("\nAngular moments allowed for 4P : %.2f",JP);
printf("\nAngular moments allowed for 5D : %.2f",JD);
