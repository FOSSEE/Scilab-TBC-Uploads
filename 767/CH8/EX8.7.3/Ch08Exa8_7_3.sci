// Scilab code Exa8.7.3: Determine the possibility of the given reaction:P.no. 362 (2011)
// Declare cell for the given reaction
R1 = cell(7,5)
// Enter data for the cell
R1(1,1).entries = 'p'
R1(1,2).entries = 1 
R1(1,3).entries = 1
R1(1,4).entries = 0
R1(1,5).entries = 1/2
R1(2,1).entries = 'K_+'
R1(2,2).entries = 1
R1(2,3).entries = 0
R1(2,4).entries = 1
R1(2,5).entries = 1/2
R1(3,1).entries = 'S_+'
R1(3,2).entries = 1
R1(3,3).entries = 1
R1(3,4).entries = -1
R1(3,5).entries = 1
R1(4,1).entries = 'pi_-'
R1(4,2).entries = -1
R1(4,3).entries = 0
R1(4,4).entries = 0
R1(4,5).entries = 1
R1(5,1).entries = 'S_0'
R1(5,2).entries = 0
R1(5,3).entries = 1
R1(5,4).entries = -1
R1(5,5).entries = 0
R1(6,1).entries = 'p_-'
R1(6,2).entries = -1
R1(6,3).entries = -1
R1(6,4).entries = 0
R1(6,5).entries = 1/2
R1(7,1).entries = 'n_0'
R1(7,2).entries = 0
R1(7,3).entries = 0
R1(7,4).entries = 0
R1(7,5).entries = 0

function f = check_Isotopic_no(Ir_sum,Ip_sum)
        if Ir_sum == Ip_sum then
            f = 1;
        else 
            f = 0;
        end
endfunction
1
// Declare a function returning equality status of proton number
function f = check_strangeness(sr_sum,sp_sum)
        if sr_sum == sp_sum then
            f = 1;
        else 
            f = 0;
        end    
endfunction
function f = check_charge(cr_sum,cp_sum)
        if cr_sum == cp_sum then
            f = 1;
        else 
            f = 0;
        end    
endfunction
// Declare a function returning equality status of lepton number
          
//     Reaction-I
printf("\n\n\nReaction-I:\n\n");
        Ir_sum = R1(1,5).entries+R1(1,5).entries;
        Ip_sum = R1(2,5).entries+R1(3,5).entries;
       if (check_Isotopic_no(Ir_sum,Ip_sum) == 0) then
            printf("The Reaction\n")
            printf("\t%s + %s --> %s + %s \nis  not possible", R1(1,1).entries,  R1(1,1).entries, R1(2,1).entries, R1(3,1).entries)
//     Reaction-II
            printf("\n\n\nReaction-II")
        sr_sum = R1(1,4).entries+R1(4,4).entries;
        sp_sum = R1(5,4).entries+R1(7,4).entries;
          if (check_strangeness(sr_sum,sp_sum)== 0) then
            printf("\n\nThe Reaction\n")
            printf("\t%s + %s --> %s + %s \nis not possible", R1(1,1).entries, R1(4,1).entries, R1(5,1).entries, R1(7,1).entries)
//     Reaction-III
            printf("\n\n\nReaction-III:\n\n");
        cr_sum = R1(1,2).entries+R1(1,2).entries;
        cp_sum = R1(1,2).entries+R1(1,2).entries+R1(1,2).entries+R1(6,2).entries; 
               if (check_charge(cr_sum,cp_sum) == 1) then
            printf("The Reaction\n")
            printf("\t%s + %s --> %s + %s + %s \nis possible", R1(1,1).entries, R1(1,1).entries, R1(1,1).entries, R1(1,1).entries, R1(6,1).entries) 
       end
        // Reaction-I:

// The Reaction
// 	p + p --> K_+ + S_+ 
// is  not possible


// Reaction-II

// The Reaction
// 	p + pi_- --> S_0 + n_0 
// is not possible


// Reaction-III:

// The Reaction
// 	p + p --> p + p + p_- 
// is possible    
            
            
            