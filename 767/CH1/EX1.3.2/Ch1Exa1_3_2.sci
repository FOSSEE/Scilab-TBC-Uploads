// Scilab code Exa1.3.2 : Grouping the nuclides as isotopes, isotones and isobars : Page 32 (2011)
E = cell(3,3);    // Declare a cell array of empty matrices for nuclides information
E(1,1).entries = 'C';    // Assign element 'C' to (1,1) cell
E(2,1).entries = 'N';    // Assign element 'N' to (2,1) cell
E(3,1).entries = 'O';    // Assign element 'o' to (3,1) cell
E(1,2).entries = 6;    // Assign atomic No. 6 to (1,2) cell
E(2,2).entries = 7;    // Assign atomic No. 7 to (2,2) cell
E(3,2).entries = 8;    // Assign atomic No. 8 to (3,2) cell
E(1,3).entries = [12,13,14,16];    // Assign mass numbers for 'C' to (1,3) cell
E(2,3).entries = [14,15,16,17];    // Assign mass numbers for 'N' to (2,3) cell
E(3,3).entries = [14,15,16,17];    // Assign mass numbers for 'O' to (3,3) cell
// Isotopes
printf("\nIsotopes:");
printf("\n=========");
for i = 1:1:3    // Search for the three elements one-by-one
    printf("\n(Z = %d)\n",E(i,2).entries);
    for j= 1:1:4
       printf("\t%s(%d)",E(i,1).entries,E(i,3).entries(j));
    end
end
// Isotones
printf("\n\nIsotones:");
printf("\n========");
for N = 6:1:9    // Search for the neutron numbers from 6 to 9
    printf("\n(N = %d)\n",N);
    for i = 1:1:3
         for j= 1:1:4
             if  E(i,3).entries(j)- E(i,2).entries == N then // N = A-Z
                  printf("\t%s(%d)",E(i,1).entries,E(i,3).entries(j));
             end
         end
    end     
end
// Isobars
printf("\n\nIsobars:");
printf("\n=======");
for A = 14:1:17    // Search for the mass numbers from 14 to 17
    printf("\n(A = %d)\n",A);
    for i = 1:1:3
         for j= 1:1:4
             if  E(i,3).entries(j) == A then
                  printf("\t%s(%d)",E(i,1).entries,E(i,3).entries(j));
             end
         end
    end     
end
//
// Result
//
// Isotopes:
// =========
// (Z = 6)
//   C(12)    C(13)    C(14)    C(16)
// (Z = 7)
//   N(14)    N(15)    N(16)    N(17)
// (Z = 8)
//  O(14)    O(15)    O(16)    O(17)
//
// Isotones:
// ========
// (N = 6)
//  C(12)    O(14)
// (N = 7)
//  C(13)    N(14)    O(15)
// (N = 8)
//  C(14)    N(15)    O(16)
// (N = 9)
//  N(16)    O(17)
//
// Isobars:
// =======
// (A = 14)
//  C(14)     N(14)    O(14)
// (A = 15)
//  N(15)    O(15)
// (A = 16)
//  C(16)     N(16)     O(16)
// (A = 17)
//  N(17)    O(17)