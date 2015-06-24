// Scilab code Exa 4.5.5 : Checking whether the  reaction  is spontaneous or exoergic : page no. 185 (2011)
// Cf-252    > Zr-98 +Ce-145 + 9*n-1 is the given reaction
M_Cf = 252.081621; // Atomic mass of Cf, amu
M_Zr = 97.912735; //  Atomic mass of Zr, amu
M_Ce = 144.917230; //  Atomic mass of Ce, amu
M_n = 3.0160294; //  Atomic mass of neutron, amu
r_sum = M_Cf+M_Zr; //  Sum of reactant, amu
p_sum = M_Ce+M_n; //  Sum of product, amu
// Declare the function which check the Q-value 
function Q = check_Qvalue(r_sum,p_sum)
        if r_sum >= p_sum then
            Q = 1;
        else 
            Q = 0;
        end
endfunction

// Reaction
        if (check_Qvalue(r_sum,p_sum)  == 1) then
            printf("\n Reaction : \n\n\t Cf(256) ----> Zr(98)+Ce(145)+9*n(1)")
            printf("\n\n\t\tThis reaction is spontaneous")
        elseif (check_Qvalue(r_sum,p_sum) == 0) then
            printf("\n Reaction : \n\n\t Cf(256) ----> Zr(98)+Ce(145)+9*n(1)")
            printf("\n\n\t\tThis reaction is not spontaneous")
           end          
 // Reaction : 
   //  Cf(256) ----> Zr(98)+Ce(145)+9*n(1)

	// 	This reaction is spontaneous 