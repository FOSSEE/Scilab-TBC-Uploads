//Calculate the value of work done if the expansion is carried out against a vacuum ,against a constant external pressure of 1.00 atm and reversibly

//Example 4.1

clc;

clear;

n=0.850;  //Number of mole of gas in mol

R1=0.08206; //Gas constant in L atm K^-1 mol^-1

T=300;  //Temperature in K

P1=15.0;  //Initial pressure in atm

P2=1.00;  //Final pressure in atm

Pex=0;  //Pressure in vaccum

V1=(n*R1*T)/P1; //Initial volume

V2=(n*R1*T)/P2;  //Final volume

w1=-Pex*(V2-V1)*101.3;  //Work done against vaccum in J

printf("(a)Work done if the expansion is carried out against a vaccum = %.0f J",w1);

w2=-P2*(V2-V1)*101.3;  //Work done against a constant external pressure in J

printf("\n(b)Value of work done if the expansion is carried out against a constant external pressure = %.2f*10^3 J",w2*10^-3);

R2=8.314;  //Gas constant in J K^-1 mol^-1

w3=(-n*R2*T)*log((P1/P2));  //Work done for an isothermal,reversible process in J

printf("\n(c)Work done if the expansion is carried out for an isothermal,reversible process = %.2f*10^3 J",w3*10^-3);
