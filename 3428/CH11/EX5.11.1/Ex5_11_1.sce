//Section-5,Example-1,Page no.-D.123
//To calculate the quantum yield of the reaction
E=34.36
lm=253.7*10^-9                //Wavelength in nm
h=6.626*10^-34
c=3*10^8
el_qu=(h*c)/lm                     //Elememtary quantum corresponding to the given wavelength
N_qu=E/el_qu                              //Number of quanta absorbed
n_moles1=2.296*10^-5                        //Number of moles of HCl formed
n_mol2=(n_moles1*6.023*10^23)            //Number of molecules of chloroacetic acid decomposed
Qu_re=n_mol2/N_qu                         //Quantum yield of reaction
disp(Qu_re,'Quantum yield of the reaction')
