// Scilab code Exa test : Checking the possibility of occurence of reactions : page no. 181 (2011)
// Declare three cells (for three reactions)
R1 = cell(4,4);
R2 = cell(5,4);
R3 = cell(4,4);
// Enter data for first cell (Reaction)
R1(1,1).entries = 'Al'; // Element
R1(1,2).entries = 13;   // Atomic number
R1(1,3).entries = 27;    // Mass number
R1(1,4).entries = 0;    // Lepton number 
R1(2,1).entries = 'He';
R1(2,2).entries = 2;
R1(2,3).entries = 4;
R1(2,4).entries = 0;
R1(3,1).entries = 'Si';
R1(3,2).entries = 14;
R1(3,3).entries = 30;
R1(2,4).entries = 0;
R1(4,1).entries = 'n';
R1(4,2).entries = 0;
R1(4,3).entries = 1;
R1(2,4).entries = 0;
// Enter data for second cell (Reaction)
R2(1,1).entries = "U";
R2(1,2).entries = 92;
R2(1,3).entries = 235;
R2(1,4).entries = 0;
R2(2,1).entries = 'n';
R2(2,2).entries = 0;
R2(2,3).entries = 1;
R2(2,4).entries = 0;
R2(3,1).entries = 'Ba';
R2(3,2).entries = 56;
R2(3,3).entries = 143;
R2(3,4).entries = 0;
R2(4,1).entries = 'Kr';
R2(4,2).entries = 36;
R2(4,3).entries = 90;
R2(4,4).entries = 0;
R2(5,1).entries = '2n';
R2(5,2).entries = 0;
R2(5,3).entries = 1;
R1(5,4).entries = 0;
// Enter data for third cell (Reaction)
R3(1,1).entries = 'P';
R3(1,2).entries = 15;
R3(1,3).entries = 32;
R3(1,4).entries = 0;
R3(2,1).entries = 'S';
R3(2,2).entries = 16;
R3(2,3).entries = 32;
R3(2,4).entries = 0;
R3(3,1).entries = 'e';
R3(3,2).entries = -1;
R3(3,3).entries = 0;
R3(3,4).entries = 0;
R3(4,1).entries = 'v_e';
R3(4,2).entries = 0;
R3(4,3).entries = 0;
R3(4,4).entries = 0;
// Declare a function returning equality status of nucleon number
function f = check_nucleon(nr_sum,np_sum)
        if nr_sum == np_sum then
            f = 1;
        else 
            f = 0;
        end
endfunction

// Declare a function returning equality status of proton number
function f = check_proton(pr_sum,pp_sum)
        if pr_sum == pp_sum then
            f = 1;
        else 
            f = 0;
        end    
endfunction

// Declare a function returning equality status of lepton number
function f = check_lepton(lr_sum,lp_sum)
        if lr_sum == lp_sum then
            f = 1;
        else 
            f = 0;
        end    
endfunction
            
// Reaction-I
printf("\n\n\nReaction-I:\n\n");
        pr_sum = R1(1,2).entries+R1(2,2).entries;
        pp_sum = R1(3,2).entries+R1(4,2).entries;
        nr_sum = R1(1,3).entries+R1(2,3).entries;
        np_sum = R1(3,3).entries+R1(4,3).entries;
        lr_sum = R1(1,4).entries+R1(2,4).entries;
        lp_sum = R1(3,4).entries+R1(4,4).entries; 
        if (check_nucleon(nr_sum,np_sum)&check_proton(pr_sum,pp_sum)&check_lepton(lr_sum,lp_sum) == 1) then
            printf("The Reaction\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)\nis possible", R1(1,1).entries, R1(1,3).entries, R1(2,1).entries, R1(2,3).entries, R1(3,1).entries, R1(3,3).entries, R1(4,1).entries, R1(4,3).entries);
        elseif (check_proton(pr_sum,pp_sum) == 0) then
            printf("The Reaction\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)\nis impossible", R1(1,1).entries, R1(1,3).entries, R1(2,1).entries, R1(2,3).entries, R1(3,1).entries, R1(3,3).entries, R1(4,1).entries, R1(4,3).entries);
            R1(4,1).entries = 'H'; R1(4,3).entries = 1;
            printf("\nThe correct reaction is:\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)\n", R1(1,1).entries, R1(1,3).entries, R1(2,1).entries, R1(2,3).entries, R1(3,1).entries, R1(3,3).entries, R1(4,1).entries, R1(4,3).entries);    
        end
//  Display for reaction-II
  printf("\n\n\nReaction-II:\n\n");
        pr_sum = R2(1,2).entries+R2(2,2).entries;
        pp_sum = R2(3,2).entries+R2(4,2).entries+R2(5,2).entries;
        nr_sum = R2(1,3).entries+R2(2,3).entries;
        np_sum = R2(3,3).entries+R2(4,3).entries+R2(5,3).entries;
        lr_sum = R2(1,4).entries+R2(2,4).entries;
        lp_sum = R2(3,4).entries+R2(4,4).entries+R2(5,4).entries; 
        if (check_nucleon(nr_sum,np_sum)&check_proton(pr_sum,pp_sum)&check_lepton(lr_sum,lp_sum) == 1) then
            printf("The Reaction\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)+%s(%d)\nis possible", R2(1,1).entries, R2(1,3).entries, R2(2,1).entries, R2(2,3).entries, R2(3,1).entries, R2(3,3).entries, R2(4,1).entries, R2(4,3).entries, R2(5,1).entries, R2(5,3).entries);
        elseif (check_nucleon(nr_sum,np_sum) == 0) then
            printf("The Reaction\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)+%s(%d)\nis impossible", R2(1,1).entries, R2(1,3).entries, R2(2,1).entries, R2(2,3).entries, R2(3,1).entries, R2(3,3).entries, R2(4,1).entries, R2(4,3).entries, R2(5,1).entries, R2(5,3).entries);
             R2(5,1).entries = '3n';
            printf("\nThe correct reaction is:\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)+%s(%d)\n", R2(1,1).entries, R2(1,3).entries, R2(2,1).entries, R2(2,3).entries, R2(3,1).entries, R2(3,3).entries, R2(4,1).entries, R2(4,3).entries, R2(5,1).entries, R2(5,3).entries);    
        end          
//     Reaction-III
            printf("\n\n\nReaction-III:\n\n");
        pr_sum = R3(1,2).entries+R3(2,2).entries;
        pp_sum = R3(3,2).entries+R3(4,2).entries;
        nr_sum = R3(1,3).entries+R3(2,3).entries;
        np_sum = R3(3,3).entries+R3(4,3).entries;
        lr_sum = R3(1,4).entries+R3(2,4).entries;
        lp_sum = R3(3,4).entries+R3(4,4).entries; 
        if (check_nucleon(nr_sum,np_sum)&check_proton(pr_sum,pp_sum)&check_lepton(lr_sum,lp_sum) == 1) then
            printf("The Reaction\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)\nis possible", R3(1,1).entries, R3(1,3).entries, R3(2,1).entries, R3(2,3).entries, R3(3,1).entries, R3(3,3).entries, R3(4,1).entries, R2(4,3).entries);
        elseif (check_lepton(nr_sum,np_sum) == 0) then
            printf("The Reaction\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)\nis impossible", R3(1,1).entries, R3(1,3).entries, R3(2,1).entries, R3(2,3).entries, R3(3,1).entries, R3(3,3).entries, R3(4,1).entries, R3(4,3).entries);
             R3(4,1).entries = 'v_e_a'
            printf("\nThe correct reaction is:\n")
            printf("\t%s(%d) + %s(%d) --> %s(%d)+%s(%d)\n", R3(1,1).entries, R3(1,3).entries, R3(2,1).entries, R3(2,3).entries, R3(3,1).entries, R3(3,3).entries, R3(4,1).entries, R3(4,3).entries);    
        end         
      
// Reaction-I:

// The Reaction
//	Al(27) + He(4) --> Si(30)+n(1)
// is impossible
// The correct reaction is:
//	Al(27) + He(4) --> Si(30)+H(1)



// Reaction-II:

// The Reaction
//	U(235) + n(1) --> Ba(143)+Kr(90)+2n(1)
// is impossible
// The correct reaction is:
//	U(235) + n(1) --> Ba(143)+Kr(90)+3n(1)



// Reaction-III:

// The Reaction
//	P(32) + S(32) --> e(0)+v_e(0)
// is impossible
// The correct reaction is:
//	P(32) + S(32) --> e(0)+v_e_a(0)
      