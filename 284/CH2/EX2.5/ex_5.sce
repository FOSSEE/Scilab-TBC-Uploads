// Chapter 2_Introduction to the quantum theory of solids
//Caption_The Fermi Dirac Probability Function
//Ex_5//page 68
Ni=9     //given no. of particles
gi=10     //given no. of quantum states
P=factorial(gi)/(factorial(Ni)*(factorial(gi-Ni)))     //Possible no of ways of relizing this distribution
printf('This distribution can be realized in %i ways \n',P)