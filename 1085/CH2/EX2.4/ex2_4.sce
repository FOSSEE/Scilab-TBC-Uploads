//Exam:2.4
clc;
clear;
close;
n_1=1;//first orbit
n_2=2;//second orbit
n_3=3;//third orbit
//E_1=-13.6*(Z^2)/(1^2);
//E_2=-13.6*(Z^2)/(2^2);
//E_3=-13.6*(Z^2)/(3^2);
//E_3-E_1=-13.6*(Z^2)*(-8/9);
//E_2-E_1=-13.6*(Z^2)*(-3/4);
E_1=-13.6/(1^2);//energy of electron in the first bohr orbit of an atom
E_2=-13.6/(2^2);//energy of electron in the second bohr orbit of an atom
E_3=-13.6/(3^2);//energy of electron in the third bohr orbit of an atom
disp((E_3-E_1)/(E_2-E_1),'ratio of energy released =');