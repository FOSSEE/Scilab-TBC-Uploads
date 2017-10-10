//Chapter-3,Example 18,Page 61
clc;
close;

energy_1= 200 *1.6*10^-13    //energy released per fission of Uranium

power =1   //in watt

F_rate = power/energy_1   //fission rate for generation 1 watt

printf('The fission rate for generation 1 watt is ')

disp(F_rate)

printf('    fission/sec')

//1 kg atom Of U(235) =235 Kg = 6.023*10^26 atoms

energy_2 = energy_1*6.023*10^26/235    //energy released per 1 kg U(235)

printf('\nThe energy released per 1kg of U(235) is ')

disp(energy_2)

printf('    Joule')
