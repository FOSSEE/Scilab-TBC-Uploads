// Scilab code Exa. 3.7.1 : To determine the energies of two gamma rays emitted  during de-excitation of Ni-60: Page no. 141 : (2011)
E_2 = 2505; // Second excited state of Ni-60, KeV
E_1 = 1332; // First excited state of Ni-60, KeV
E_0 = 0; // Ground state of Ni-60 , KeV
E_G_2 = E_2-E_1; // Energy of gamma rays emitted when transition from 2 to 1, KeV
E_G_1 = E_1-E_0; // Energy of gamma rays emitted when transition from 1 to 0, KeV
printf("\n Energies of two gamma rays emitted : %d KeV and %d KeV", E_G_2, E_G_1)
// Result
//     Energy of two gamma rays emitted : 1173 KeV and 1332 KeV 