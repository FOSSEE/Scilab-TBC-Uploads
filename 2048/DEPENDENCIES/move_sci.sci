// function result = move_sci(b,nonred,max_sci)
// Moves matrix b to matrix result with the information on where to move,
// decided by the indices of nonred.  
// The matrix result will have as many rows as b has and max number of columns.  
// b is augumented with zeros to have nonred number of columns;  
// The columns of b put into those of result as decided by nonred.

function result = move_sci(b,nonred,max_sci)
[brows,bcols] = size(b);
b = [b zeros(brows,length(nonred)-bcols)];
result = zeros(brows,max_sci);
result(:,nonred') = b;
endfunction
