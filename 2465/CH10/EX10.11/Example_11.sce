//Chapter-10,Example 11,Page 255
clc();
close();

E_cell = 0.123

E_calomel = 0.2415

E_Q = 0.6990

//E_Q/H2Q = E_Q - 0.0592 *pH
//E_cell= E_Q/H2Q - E_calomel

pH = (E_cell + E_calomel - E_Q)/(-0.0592)

printf('the pH  of solution is pH = %.2f',pH)
