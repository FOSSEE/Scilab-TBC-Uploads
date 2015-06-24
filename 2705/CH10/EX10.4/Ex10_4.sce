clear;
clc;
disp('Example 10.4');

//  aim : To determine the
//  (a) Heat transfer in the boiler
//   (b) Heat transfer in the superheater
//  (c) Gas used

//  given values
P = 100;// boiler operating pressure, [bar]
Tf = 256;// feed water temperature, [C]
x = .9;// steam dryness fraction.
Th = 450;// superheater exit temperature, [C]
m = 1200;// steam generation/h, [tonne]
TE = .92;// thermal efficiency
CV = 38;// calorific value of fuel, [MJ/m^3]

// solution
// (a)
// from steam table
hw = 1115.4;// specific enthalpy of feed water, [kJ/kg]
// for wet steam
hf = 1408;// specific enthalpy, [kJ/kg]
hg = 2727.7;// specific enthalpy, [kJ/kg]
//  so
h = hf+x*(hg-hf);// total specific enthalpy of wet steam, [kJ/kg]
//  hence
Qb = m*(h-hw);// heat transfer/h for wet steam, [MJ]
mprintf('\n (a) The heat transfer/h in producing wet steam in the boiler is  =  %f  MJ\n',Qb);

// (b)
// again from steam table
// specific enthalpy of superheated stem at given condition is,
hs = 3244;// [kJ/kg]

Qs = m*(hs-h);// heat transfer/h in superheater, [MJ]
mprintf('\n (b) The heat transfer/h in superheater is  =  %f  MJ\n',Qs);

// (c)
V = (Qb+Qs)/(TE*CV);// volume of gs used/h, [m^3]
mprintf('\n (c) The volume of gas used/h is  =  %f m^3\n',V);

//  There is calculation mistake in the book so our answer is not matching

//  End
