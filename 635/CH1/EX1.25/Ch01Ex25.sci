// Scilab Code Ex 1.25 Miller Bravias indices of lattice planes: Page-30 (2010)
function [h] = fh(H,K)    // Function for calculating (2H-K)/3
    h = (2*H - K)/3;    
endfunction     

function [k] = fk(H,K)    // Function for calculating (2K-H)/3
    k = (2*K - H)/3;
endfunction

function [i] = f(h,k)    // Function for calculating i
    i = -(h + k);
endfunction

function [l] = fl(L)    // Function for calculating l
    l = L;
endfunction

H1 = 1; K1 = 0; L1 = 0 ;  // First set of Miller indices
H2 = 0; K2 = 1; L2 = 0;    // Second set of miller indices
H3 = 1; K3 = 1; L3 = 0;    // Third set of miller indices

h1 = fh(H1,K1)*3;    // Call function fh
k1 = fk(H1,K1)*3;    // Call function fk
l1 = fl(L1)*3;       // Call function fl
i1 = f(h1,k1);       // Call function 

h2 = fh(H2,K2)*3;    // Call function fh
k2 = fk(H2,K2)*3;    // Call function fk
l2 = fl(L2)*3;        // Call function l2
i2 = f(h2,k2);        // Call function f

h3 = fh(H3,K3)*3;    // Call function fh
k3 = fk(H3,K3)*3;    // Call function fk
l3 = fl(L3)*3;       // Call function l3
i3 = f(h3,k3);        // Call function f

printf("\n The Miller Bravias indices of [%d%d%d] are [%d %d %d %d]", H1, K1, L1, h1, k1,i1,l1);
printf("\n The Miller Bravias indices of [%d%d%d] are [%d %d %d %d]", H2, K2, L2, h2, k2,i2,l2);
printf("\n The Miller Bravias indices of [%d%d%d] are [%d %d %d %d]", H3, K3, L3, h3, k3,i3,l3);

// Result
// The Miller Bravias indices of [100] are [2 -1 -1 0]
// The Miller Bravias indices of [010] are [-1 2 -1 0]
// The Miller Bravias indices of [110] are [1 1 -2 0] 







