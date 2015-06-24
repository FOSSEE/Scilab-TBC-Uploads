// Scilab code Exa. 3.9.2 : To determine the age of boat whose half life is given : Page no. 145 : (2011)
t_h = 5760; // Half life of boat, years
D_c = 0.6931/t_h; // Decay constant of boat, years^-1
N_1 = 16; // Number of atoms decay per min. per gram initially 
N = 5; // Number of atoms decay per min per gram presently
t = log(N_1/N)*1/D_c; // Age of the boat, years
printf("\n Age of the boat : %d years ", t)
// Result
//         Age of the boat : 9666 years 