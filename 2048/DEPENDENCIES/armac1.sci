// Scilab description of an ARMAX process
// Form:
// A(q) y(t) = [B(q)/F(q)] u(t-nk) + [C(q)/D(q)] e(t)

// [A(q)*F(q)*D(q)] y(t) = [B(q)*D(q)] u(t-nk) + [C(q)*F(q)]e(t)
// A1(q) = [A(q)*F(q)*D(q)]
// B1(q) = [B(q)*D(q)]
// D1(q) = [C(q)*F(q)]

function process_ar = armac1(a,b,c,d,f,sig)
ny = 1; nu =1; 
a1 = convol(convol(a,f),d);
b1 = convol(b,d);
d1 = convol(c,f);
process_ar = armac(a1,b1,d1,ny,nu,sig);

endfunction;
