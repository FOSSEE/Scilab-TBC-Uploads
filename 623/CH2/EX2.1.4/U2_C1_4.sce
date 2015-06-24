//variable initialization
e=1.6*10^-19;                                                                   //Charge of electron (coulombs)
h=(6.625*10^-34)/(2*%pi);                                                       //Planck's constant (joule-second)
c=3*10^8;                                                                       //Speed of light (meter/second)

//calculating ch by using ch = 2*pi*h*c
ch=(2*%pi*h*c*10^9)/e;                                                          //Value of ch (eV nm)

printf("\nch = %.0f eV nm",ch);
