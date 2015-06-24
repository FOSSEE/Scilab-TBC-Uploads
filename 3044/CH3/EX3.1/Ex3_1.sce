//Variable declaration
Sample = [[0,0],[0,1],[1,0],[1,1],[0,2],[2,0]]
C = [[1,0],[0,1]]
D = [[0,0],[0,1],[0,2]]
E = [[0,0],[1,1]]

//Calculation
un = union(C,E)
inter = intersect(C,D)
D_comp = setdiff(Sample, D)

// Result
printf ( "Part A: ")
disp(un)
printf ( "Part B: ")
disp(inter)
printf ( "Part C: ")
disp(D_comp)
