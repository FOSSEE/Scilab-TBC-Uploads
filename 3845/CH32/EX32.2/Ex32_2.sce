//Example 32.2
a1=2.014102;//Atomic mass of deuterium (u), See Appendix A
a2=3.016050;//Atomic mass of tritium (u), See Appendix A
a=a1+a2;//Total atomic mass per reaction (u)
m=a;//Mass per mole of reactants (g/mol)
mol_of_reactants=1000/m;//Mol of reactants in 1kg
N=mol_of_reactants*6.02*10^23;//Number of reactions
E=N*17.59*(1.602*10^-13);//Total energy output=number of reactions*energy per reaction) (J)
printf('a. Total energy output = %0.2e J',E)
t=3.16*10^7;//Number of seconds in a year (s)
power=E/t;
printf('\nb. Power output = %0.1f MW',power/10^6)
//There is a small variation in the value of atomic mass of Tritium used in the textbook from that found in Appendix A
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest

