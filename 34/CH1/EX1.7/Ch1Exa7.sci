
r=1.4; // Rate of arrival of Solar Energy at erath, kW per square meter
R=1.5*(10^11); //Radius of Earth, m
pi=22/7; //Mathematical constant

P=r*(4*pi*(R^2)); //Total power recieved by Earth, kW
P= P*(10^3); //W

C= 3*(10^8); //Velocity of light, m/s
E=P; //Energy lost by Sun, J
 
m= E/(C^2); //Mass of Sun lost per second as energy, kg
disp(m,"Mass lost by sun per second, in Kg, is:")

//Result
 
// Mass lost by sun per second, in Kg, is:   
//    4.400D+09  
 
