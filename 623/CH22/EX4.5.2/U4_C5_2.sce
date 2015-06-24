//variable initialization
n=3/2;
dlembda=26*10^-2;                                                               //shifting in short wave limit of X-ray spectrum (Å)
ch=12400                                                                        //product of speed of light and Plank's constant (eV*Å)
e=1.6*10^-19;                                                                   //charge of electron (Coulomb)

//solution
V=((n-1)/n)*(ch/(dlembda*10^3));                                              //initial voltage applied to the tube (KV)

printf("\nInitial voltage = %.1f KV",V);
