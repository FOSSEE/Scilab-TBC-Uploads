//Tested on Windows 7 Ultimate 32-bit
//Chapter 1 Introduction to Electronics Pg no. 33 and 34
//Solved Problem 5
clear;
clc;

//Given Data
//Figure 1.34

Rm=2;//resistance of motor in ohms
V=10;//battery voltage in volts
Rpot=10;//maximum resistance of potentiometer in ohms
Ppot=100;//maximum power rating of potentiometer in watts

//Solution

Ipot=sqrt(Ppot/(Rpot+Rm));//maximum safe current possible through potentiometer in amperes
printf("Current rating of potentiometer I = %.2f Amps\n\n",Ipot);

Rp=10;//Resistance of potentiometer set in ohms
I10=V/(Rp+Rm);//Current for corresponding resistance of potentiometer

printf("When the potentiometer is set to %d Ohms,\nthe total resistance of the circuit is %d ohms.\n",Rp,Rp+Rm);
printf("I = %.1f Amps\n",I10);

if(I10<Ipot)
    printf("\nThe amount of current is less than %.2f Amps and the potentiometer is safe.\n\n",Ipot);
end


Rp=2;//Resistance of potentiometer set in ohms
I2=V/(Rp+Rm);//Current for corresponding resistance of potentiometer

printf("When the potentiometer is set to %d Ohms,\nthe total resistance of the circuit is %d ohms\n",Rp,Rp+Rm);
printf("I = %.1f Amps\n",I2);

if(I10<Ipot)
    printf("\nThe amount of current is less than %.2f Amps and the potentiometer is safe \n",Ipot);
end

Rp=1;//Resistance of potentiometer set in ohms
I3=V/(Rp+Rm);//Current for corresponding resistance of potentiometer

printf("\n However when potentiometer resistance is %d ohms, I= %d/%d = %.1f Amp.\nThis is greater than %.2f Amperes.\nThe potentiometer wire will get heated and temperature will rise.\nFor still lower values of potentiometer setting,\nI will be still higher and the potentiometer will be damaged.\nIt may even burn out.",Rp,V,(Rp+Rm),I3,Ipot)
