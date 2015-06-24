//page 508
// example 11.8b
// bipolar signalling
clc;
P0=input("enter prob of symbol 0");
P1=input("enter prob of symbol 1");
P2=input("enter prob of symbol -1");
ak=(0)*P0+(1)*P1+(-1)*P2;
disp(ak,"mean is");
Ro=(0^2)*P0+(1^2)*P1+((-1)^2)*P2;
disp(Ro,"mean square is");