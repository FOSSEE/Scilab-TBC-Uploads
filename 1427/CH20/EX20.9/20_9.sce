//ques-20.9
//Calculating energy released in given fission reaction
clc
U=235.124;//atomic mass of U (in amu)
n=1.0099;//mass of neutron (in amu)
Kr=94.945;//atomic mass of Kr (in amu)
Ba=138.954;//atomic mass of Ba (in amu)
dm=U+n-(Kr+Ba+2*n);//mass defect
E=dm*931;
printf("The energy released is %.3f Mev.",E);
