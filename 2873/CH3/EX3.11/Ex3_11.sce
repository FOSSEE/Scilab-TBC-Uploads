// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 11")
v1=50;//velocity of steam entering injector in m/s
v2=25;//velocity of mixture leave injector in m/s
h1=720;//enthalpy of steam entering injector in kcal/kg
h2=24.6;//enthalpy of water entering injector in kcal/kg
h3=100;//enthalpy of steam leaving injector in kcal/kg
h4=100;//enthalpy of water leaving injector in kcal/kg
deltaz=2;//depth from axis of injector in m
q=12;//heat loss from injector to surrounding through injector
g=9.81;//acceleration due to gravity in m/s^2
disp("let mass of steam to be supplied per kg of water lifted be(m) kg.applying law of energy conservation upon steam injector,for unit mass of water lifted")
disp("energy with steam entering + energy with water entering = energy with mixture leaving + heat loss to surrounding")
disp("m*(v1^2/2+h1*10^3*4.18)+h2*10^3*4.18+g*deltaz=(1+m)*(h3*10^3*4.18+v2^2/2)+m*q*10^3*4.18")
disp("so steam suppling rate(m)in kg/s per kg of water")
disp("m=((h3*10^3*4.18+v2^2/2)-(h2*10^3*4.18+g*deltaz))/((v1^2/2+h1*10^3*4.18)-(h3*10^3*4.18+v2^2/2)-(q*10^3*4.18))")
m=((h3*10^3*4.18+v2^2/2)-(h2*10^3*4.18+g*deltaz))/((v1^2/2+h1*10^3*4.18)-(h3*10^3*4.18+v2^2/2)-(q*10^3*4.18))
disp("NOTE=>here enthalpy of steam entering injector(h1)should be taken 720 kcal/kg instead of 72 kcal/kg otherwise the steam supplying rate comes wrong.")
