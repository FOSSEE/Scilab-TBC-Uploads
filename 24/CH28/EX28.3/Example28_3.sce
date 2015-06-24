//Given that
E1 = 3.0  //in Volts
E2 = 6.0  //in Volts
R1 = 2.0  //in Ohm
R2 = 4.0  //in Ohm

//Sample Problem 28-3
printf("**Sample Problem 28-3**\n")
function [f] = circuit(i)
    f = zeros(2, 1)
    //Using KVL in both the loops
    f(1) = -i(1)*R1 - E1 - i(1)*R1 + E2 + i(2)*R2
    f(2) = E2 + i(2)*R2 + (i(1)+i(2))*R1 - E2 + (i(1)+i(2))*R1
endfunction
i = fsolve([0,0], circuit)
printf("i1 = %fA\n", i(1))
printf("i2 = %fA\n", i(2))
printf("i3 = %fA", sum(i))