//variable initialization
ch=12400                                                                        //constant (eV Å)
phi_Tantalum=4.2                                                                //work function of Tantalum (eV)
phi_Tungsten=4.5                                                                //work function of Tungsten (eV)
phi_Aluminium=4.2                                                               //work function of Aluminium (eV)
phi_Barium=2.5                                                                  //work function of Barium (eV)
phi_Lithium=2.3                                                                 //work function of Lithium (eV)

//Calculation
lembda_Tantalum=ch/phi_Tantalum;                                                //Threshold wavelength of Tantalum (Å)
lembda_Tungsten=ch/phi_Tungsten;                                                //Threshold wavelength of Tungsten (Å)
lembda_Aluminium=ch/phi_Aluminium;                                              //Threshold wavelength of Aluminium (Å)
lembda_Barium=ch/phi_Barium;                                                    //Threshold wavelength of Barium (Å)
lembda_Lithium=ch/phi_Lithium;                                                  //Threshold wavelength of Lithium (Å)

if(lembda_Tantalum < 8000 &  lembda_Tantalum > 4000)                               //Checking whether Threshold wavelength of Tantalum lies in visible range or not
    disp("Tantalum can be used for designing photocell")
end

if(lembda_Tungsten < 8000 & lembda_Tungsten > 4000)                               //Checking whether Threshold wavelength of Tungsten lies in visible range or not
    disp("Tungsten can be used for designing photocell")
end

if(lembda_Aluminium < 8000 &  lembda_Aluminium > 4000)                             //Checking whether Threshold wavelength of Aluminium lies in visible range or not
    disp("Aluminium can be used for designing photocell")
end

if(lembda_Barium < 8000 &  lembda_Barium > 4000)                                   //Checking whether Threshold wavelength of Barium lies in visible range or not
    disp("Barium can be used for designing photocell")
end

if(lembda_Lithium < 8000 & lembda_Lithium > 4000)                                 //Checking whether Threshold wavelength of Lithium lies in visible range or not
    disp("Lithium can be used for designing photocell")
end