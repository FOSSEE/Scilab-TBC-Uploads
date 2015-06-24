//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 30


clear;
clc;


//Given:
T = [323 333 343 348 353 363 373]; //temperatures (K)
P2 = [12.40 19.86 31.06 37.99 47.32 70.11 101.3]; //vapour pressure for benzene (kPa)
P1 = [35.85 51.85 72.91 85.31 100.50 135.42 179.14]; //vapour pressure for water (kPa)
Tb = 353.1; //boiling temperature (K)
Pb = 101.3; //boiling pressure (kPa)

//To prepare temperature composition diagram

//To find three phase temperature
clf
for i =1:7
    P(i) = P1(i) + P2(i);
end
plot(P,T);
//From graph, at P = 101.3 kPa..
T_ = 340; //three phase temperature

//At three phase temperature
P1_ = 71.18; //(kPa)
P2_ = 30.12; //(kPa)
xb_ = P1_/Pb; //mol fraction of benzene at triple point

//For the dew point curve
//For curve BE in temp range from 342 to 373 K
for i = 3:7
    y1(i) = 1-(P2(i)/Pb); 
end

clf
xset('window',1);
T1(1) = 342; y1_(1) = 0.7;
for i= 2:6
    T1(i) = T(i+1);
    y1_(i) = y1(i+1);
end
plot(y1_,T1);

//For the curve Ae in the temp range of 342 K to 353.1 K
for i = 3:5
    y2(i) = P1(i)/Pb;
end

T2(1) = 342; y2_(1) = 0.7;
for i = 2:4
    T2(i) = T(i+1);
    y2_(i) = y2(i+1);
end
plot(y2_,T2);
xrect(0,342,1,342);
xtitle("Temperature Composition diagram","xa,ya","Temperature");

//end