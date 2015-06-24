//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 12


clear;
clc;


//Given:
xa = [0 0.2 0.4 0.6 0.8 1.0];
Pa_bar = [0 0.049 0.134 0.243 0.355 0.457];
Pb_bar = [0.386 0.288 0.187 0.108 0.046 0];

//To calculate activity and activity coeffecient of chloroform
xb = 1-xa;
Pbo = 0.386; //vapour pressure of pure chloroform
//(a). Based on standard state as per Lewis-Randall rule

mprintf('Based on Lewis Randall Rule');
mprintf('\n   Activity          Activity coeffecient');
for i = 1:6
    a(i) = Pb_bar(i)/Pbo;
    mprintf('\n    %f',a(i));
    if(xb(i)==0)
        mprintf('         Not defined');
    else ac(i) = a(i)/xb(i);
        mprintf('          %f',ac(i));
    end
end

//(b). Based on Henry's Law 
Kb = 0.217; //bar (From Example 7.11 Page no. 276)

mprintf('\n\n\n Based on Henrys Law');
mprintf('\n   Activity         Activity coeffecient');
for i = 1:6
    a(i) = Pb_bar(i)/Kb;
    mprintf('\n    %f',a(i));
    if(xb(i)==0)
        mprintf('         Not defined');
    else
        ac(i) = a(i)/xb(i);
        mprintf('           %f',ac(i));
    end
end

//end