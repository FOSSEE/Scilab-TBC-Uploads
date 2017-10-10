//////Variable Declaration
Dh = 7.6e-7     //Diffusion coefficient of Hemoglobin, cm2/s
Do2 = 2.2e-5    //Diffusion coefficient of oxygen, cm2/s
rh = 35.        //Radius of Hemoglobin, °A
ro2 = 2.0       //Radius of Oxygen, °A
k = 4e7         //Rate constant for binding of O2 to Hemoglobin, 1/(M.s)
NA =6.022e23    //Avagadro Number
//Calculations
DA = Dh + Do2
kd = 4*%pi*NA*(rh+ro2)*1e-8*DA

//Results
printf("\n Estimated rate %4.1e 1/(M.s is far grater than experimental value of %4.1e 1/(M.s, \nhence the reaction is not diffusion controlled",kd,k)

