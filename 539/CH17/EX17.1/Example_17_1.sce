//Determination of Electrochemical Cell Characteristics

clear;
clc;

printf("\tExample 17.1\n");

V_Cd=-0.403;  //Half Cell Potential of Cd++|Cd
V_Ni=-0.250;  //Half Cell Potential of Ni++|Ni
dV=V_Ni-V_Cd;
printf("\nStandard Cell potential is : %f V\n",dV);

C_Ni=10^-3;
C_Cd=0.5;
n=2;  //Net electron exchange in Redox reaction
V=-dV-(0.0592*log10(C_Ni/C_Cd)/n);
printf("\nNet EMF is : %f V\n",V);
printf("\nHence\n");

if V<0 then 
    printf("\nNi is reduced & Cd is oxidised\n");
else
    printf("\nCd is reduced & Ni is oxidised\n");
end

//End