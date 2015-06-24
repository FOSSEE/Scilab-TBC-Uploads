//function for calculating the vibrational energy of O2 molecule
function[energy]=F(v)
    energy=(((v+.5)*a)-(((v+.5)^2)*b))*h*c;
endfunction

//variable initialization
h=6.62*10^-34;                                                                  //Plank's constant (joule second)
c=3*10^8;                                                                       //Speed of light (m/s)
a=1580.36*100;                                                                  //value of ωe (m-1)
b=12.07*100;                                                                    //value of ωexe (m-1)

//Calculation of zero point energy
E0=F(0);                                                                        //Zero point energy of the molecule (J)

//Calculation of vibrational Raman shift
shift=(F(1)-F(0))/(h*c);                                                        //Expected vibrational Raman shift (m-1)

printf("\nZero point energy = %.3e J\nExpected vibrational Raman shift = %.0f m-1",E0,shift);
