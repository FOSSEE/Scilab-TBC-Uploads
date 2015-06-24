//variable initialization
lembda1=250*10^-12;                                                             //wavelength of K-alpha line (m)
lembda2=179*10^-12;                                                             //wavelength of K-alpha line (m)
R=10972900                                                                      //(m-1)

//calculation
z1=1+sqrt(4/(3*lembda1*R));                                                     //atomic number
z2=1+sqrt(4/(3*lembda2*R));                                                     //atomic number
printf("\nThe required elements are: Z =");
for i=z1+1:1:z2-1
    printf(" %.0f",i);
end
