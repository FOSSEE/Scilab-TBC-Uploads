//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 9


clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  


//Given:
T = 500; //temperature (K)
P = 10; //pressure(bar)
R = 8.314; //ideal gas constant
B = -2.19*10^-4; C=-1.73*10^-8; //Virial coeffecients
Tc = 512.6; //critical temperature
Pc = 81; //critical pressure

//To calculate compressibility factor and molar volume

//(a): Truncated form of virial equation
V_ideal = approx(((R*T)/(P*10^5)),7); //ideal gas volume
function [z] = f1(V)
    z = (((R*T)/(P*10^5))*(1+(B/V)+(C/(V^2)))); //function for obtaining volume by virial equation
endfunction

//loop for hit and trial method
flag = 1;
while(flag==1)
    V_virial = approx(f1(V_ideal),7);
    if(approx(V_ideal,5)==approx(V_virial,5))
        flag = 0;
        break;
        else
    V_ideal = V_virial;
end
end
mprintf('Volume obtained vy virial equation is %4.3e cubic m',V_virial);
Z = approx(((P*10^5*V_virial)/(T*R)),3); //compressibility factor
mprintf('\nCompressibilty factor for virial equation is %f ',Z);

//(b): Redlich Kwong Equation
//Constants in Redlich Kwong equation
a = approx(((0.4278*(R^2)*(Tc^2.5))/(Pc*10^5)),4);
b = approx(((0.0867*R*Tc)/(Pc*10^5)),9);

V_ideal = approx(((R*T)/(P*10^5)),7); //ideal gas volume

//Function to find volume by Redlich Kwong equation 
function [x] = f2(V)
    x = ((R*T)/(P*10^5))+b-((a*(V-b))/((T^0.5)*(P*10^5)*V*(V+b)));
endfunction

//loop for hit and trial method
flag = 1;
while(flag==1)
    V_redlich = approx(f2(V_ideal),7);
    if(approx(V_ideal,5)==approx(V_redlich,5))
        flag = 0;
        break;
        else
    V_ideal = V_redlich;
end
end
mprintf('\n\nVolume obtained by Redlich Kwong Equation is %4.3e cubic m/mol',V_redlich);
Z = approx(((P*10^5*V_redlich)/(T*R)),3); //compressibility factor
mprintf('\nCompressbility factor by Redlich Kwong equation is %f',Z);

//end