//variable initialization
zH=1                                                                            //atomic no. of H
zHe=2                                                                           //atomic no. of He
deltaHe=5.84                                                                    //doublet splitting of the first excited state of He (cm-1)

//calculation
deltaH=deltaHe*(zH/zHe)^4;                                                      //doublet splitting for hydrogen atom (cm-1)

printf("\n doublet splitting for H atom = %.3f cm-1",deltaH);
