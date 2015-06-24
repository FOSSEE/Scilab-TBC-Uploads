//variable initialization
R=1.097*10^7;                                                                   //Rydberg constant (m-1)
ratio=1836;                                                                     //ratio of maas of tritium and hydrogen

//calculation
lembda=(36*2*10^10)/(5*R*3*ratio);                                              //separation of the first line of the Balmer series (Å)

printf("\nΔλ = %.1f Å",lembda);
