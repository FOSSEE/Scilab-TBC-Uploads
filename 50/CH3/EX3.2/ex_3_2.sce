//example no.3.2
// show if a given matrix 'A' possesses 'property A'

A=[2 -1 0 -1;-1 2 -1 0;0 -1 2 0;0 0 -1 2 ]

P=[0 0 0 1;0 1 0 0;0 0 1 0;1 0 0 0]             // let us take the pemutation matrix as P

// then we find that 

P*A*P'

// is of the form (3.2) . hence the matrix 'A' has property A

