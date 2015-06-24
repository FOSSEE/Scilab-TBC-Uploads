clc,clear
//Example 6.12
//To find higher powers of complex number using demoivre theorem

z= complex(1,1);
r= abs(z);//modulus of z
theta=phasemag(z) ;//arguement of z
power=10;
//using demoivre formula
answer= (r^power)*(cosd(theta*power)+%i*sind(theta*power));
//printf('(1+i)^10 = (%.0f)*(cos(%.0f)+ i*sin(%.0f))',r^power,theta*power,theta*power);
printf('\n %.0f + %.0f*i',real(answer),imag(answer));
printf('\n(OR)\n %.0f*i',imag(answer));
