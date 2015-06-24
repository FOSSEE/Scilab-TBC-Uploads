//variable initialization
R=109737                                                                        //(cm-1)
n=1.805                                                                         //effective quantum number for the ground state of rubidium

//calculation
T=R/(8065*n^2);                                                                 //ionization potential of rubidium (eV)

printf("\nThe ionization potential of rubidium = %.3f eV",T);
