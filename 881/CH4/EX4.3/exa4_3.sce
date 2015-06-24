clc;
//Example 4.3
//Page no 128
//solution

Fc=1; //MHz
Fm=5; //kHz
M=60; //%
m=(M/100); 
Pc=6; //KW


//(a)

disp("(a)Total average power delivered to the load ");

Rl=(Pc*[1+m^2/2]);

disp('KW',Rl,"Rl = ");

//(b)

disp("(b)The modulation signal power ");

Vs=sqrt(100*(10^3)*Rl);
 
disp('KV',(Vs/(10^3)),"Vs(RMS) = ");

a=Vs*sqrt(2);

disp('KV',(a/(10^3)),"Therefore, peak value of modulation signal =")

