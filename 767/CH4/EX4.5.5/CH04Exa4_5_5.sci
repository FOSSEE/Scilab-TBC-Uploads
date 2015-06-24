// Scilab code Exa 4.5.5 : Checking given reaction condition : page no. 184 (2011)
// Li-6 + n-1     > He-4 + H-3 is the given reaction 
M_Li = 6.0151234; // Atomic mass of Li, amu
M_n = 1.0086654; //  Atomic mass of neutron, amu
M_He = 4.0026034; //  Atomic mass of He, amu
M_H = 3.0160294; //  Atomic mass of H, amu
r_sum = M_Li+M_n; //  Sum of reactant, amu
p_sum = M_He+M_H; //  Sum of product, amu
// Declare a function returning equality status of nucleon number
function Q = check_Qvalue(r_sum,p_sum)
        if r_sum >= p_sum then
            Q = 1;
        else 
            Q = 0;
        end
endfunction

// Reaction
        if (check_Qvalue(r_sum,p_sum)  == 1) then
            printf("\n Reaction : \n\n\t Li(6)+n(1) ----> He(4)+H(3)")
            printf("\n\n\t\tThis reaction is exoergic")
        elseif (check_Qvalue(r_sum,p_sum) == 0) then
            printf("\n Reaction : \n\n\t Li(6)+n(1) ----> He(4)+H(3)")
            printf("\n\n\t\tThis reaction is endoergic")
           end          
// Reaction : 

//	Li(6)+n(1) ----> He(4)+H(3)

	//	This reaction is exoergic