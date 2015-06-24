//variable initialization
z1=1                                                                            //atomic no.
z2=2                                                                            //atomic no.
deltaT2=5.84                                                                    //doublet splitting of the first excited state for z=2 (cm-1)

//calculation
deltaT1=deltaT2*(z1/z2)^4;                                                      //separation in hydrogen atom (cm-1)

printf("\n separation in hydrogen atom = %.3f cm-1",deltaT1);
