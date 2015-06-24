clc;
//Example 1.16
//Page no 30


disp("Given: For a non ideal amplifier and the following parameters ");
disp("Input signal power = 2 x 10^-10 W");
disp("Input noise power = 2 x 10^-18 W");
disp("Power Gain = 1 x 10^6");
disp("Internal noise = 6 x 10^-12 W");

//Solution

ip=2*(10^-10);

in=2*(10^-18);

G=1*(10^6);

Nd= 6*(10^-12);

//(a)


sn=(ip/in);

SN=10*log10(round(sn));

disp('dB',round(SN),"S/N = ");

//(b)

disp("(b)The output noise power is the sum of the internal noise and the amplified input noise, therefore ");

No=(G*in)+Nd;

disp('W',No,"Nout = ");

disp("The output power is simply the product of the input power and the power gain. ");

Po=G*ip;

disp('W',Po,"Pout = ");

disp("For the output signal and noise power levels calculated and substituting in equation 1-22, the output S/N is ");

sn1=(Po/No);

SN1=10*log10(round(sn1));

disp('dB',round(SN1),"S/N = ");

//(C)

disp("(c)The noise factor is found by substituting the result from step (a) and (b) into equation 1-25  ");

F=([round(sn)]/[round(sn1)]);

disp(F,"F = ");

disp("and the noise figure is calculated from equation 1-26(refer pgno 25) ");

NF=10*log10(round(F));

disp('dB',round(NF),"NF = ");

