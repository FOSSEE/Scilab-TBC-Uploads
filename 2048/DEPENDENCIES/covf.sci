// z: [y u] (Column matrix)
//       ----                     ----
//      |                             |
//      | ryy(0)  ryy(1) ... ryy(len) |
//      |                             |
//  v = | ruy(0)  ruy(1) ... ruy(len) |
//      |                             |
//      | ryu(0)  ryu(1) ... ryu(len) |
//      |                             |
//      | ruu(0)  ruu(1) ... ruu(len) | 
//      |                             |
//       ----                     ----
// No. of lags

function v = covf(z,n)
[r c] = size(z);
y1 = z(:,1);
u1 = z(:,2);
  if n>r  
  //  disp('Incorrect number of lags');
    n = r;
  else 
    r = n;
  end;
ryu = corr(y1,u1,r);
ruy = corr(u1,y1,r);;
ryy = corr(y1,r);
ruu = corr(u1,r);
v = [ryy; ruy; ryu; ruu]
endfunction;
