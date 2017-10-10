//EX3_8: Show that
//          A'BD' + BCD + ABC' + AB'D = BC'D' + AD + A'BC

//clears the screen
clc

//clears already existing variables
clear

//Starting with the left side, we first add consensus terms, then combine   terms and finally eliminate terms by the consensus theorem
disp('A''BD'' + BCD + ABC'' + AB''D')
//add consensus of A'BD' and ABC'
//add consensus of A'BD' and BCD
//add consensus of BCD and ABC'
disp('= A''BD'' + BCD + ABC'' + AB''D + BC''D + A''BC + ABD')
disp('= AD + A''BD'' + BCD + ABC'' + BC''D'' + A''BC')
//eliminate consensus of BC'D' and AD
//eliminate consensus of AD and A'BC
//eliminate consensus of BC'D' and A'BC
disp('= BC''D'' + AD + A''BC')
