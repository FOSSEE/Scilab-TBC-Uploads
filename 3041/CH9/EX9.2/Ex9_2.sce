//Variable declaration
t=1                   //thickness(mil)         
e=1.6*10**-19         //charge on electron(C)
Pp=10**17             //concentration of phosphorous(atoms/cm^3)
Bn=5*10**16           //boron concentration(atoms/cm^3)
un=.135               //mobility(m^2/Vs)

//Calculations
n=(Pp-Bn)*10**6       //net concentration(atoms/cm^3)
g=e*un*n              //conductivity()
rho=10**6/(g*25)      //resistivity(ohm mil)
Rs=rho/t              //sheet resistance(ohm mil^2)

//Results
printf ("Sheet resistance is %.f ohm(mil**2)",Rs)
