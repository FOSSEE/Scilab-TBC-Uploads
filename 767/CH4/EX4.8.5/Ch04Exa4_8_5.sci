// Scilab code Exa 4.8.5 : Identifying the nucleus and energy released in the given reaction : page no. 197 (2011)
// Declare three cells (for three reactions)
R = cell(4,3);
// Enter data for first cell (Reaction)
R(1,1).entries = 'H'; // Element
R(1,2).entries = 1;   // Atomic number
R(1,3).entries = 2;    // Mass number
R(2,1).entries = 'H';
R(2,2).entries = 1;
R(2,3).entries = 3;
R(3,1).entries = 'n'
R(3,2).entries = 0;
R(3,3).entries = 1;
R(4,1).entries = 'He'
R(4,2).entries = 2;
R(4,3).entries = 3;
// Declare a function returning equality status of nucleon number
  
        p_sum = R(1,2).entries+R(2,2).entries;
                if (p_sum == 2) then
            
            printf("\n The particle is : %s(%d,%d) ",R(4,1).entries,R(4,2).entries,R(4,3).entries ) 
             end 
//  Calculate the energy released
m_n = 1.008665; // Mass of neutron, amu
m_d = 2.014102; // Mass of deutron, amu
m_He = 3.0160293; // Mass of He-3, amu
E = [2*m_d-(m_n+m_He)]*931.47; // Energy released in this reaction, MeV
printf("\n The energy released in this reaction : %4.2f MeV", E )
// Result 
//         The particle is : He(2,3) 
 //      The energy released in this reaction : 3.27 MeV