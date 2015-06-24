function[]=towe(n,from,to,aux)
  if(n==1);
    disp(to,"to ",from,"Move peg 1 from");
  else
    towe(n-1,from,aux,to);
    disp(to,"to",from,"from",n,"Move Peg");
    towe(n-1,aux,to,from);
  end
endfunction

function[]=tower(from,to,aux)
  n=input("Enter n");
  towe(n,from,to,aux);
endfunction
//Calling Routine:
n=3//Number of disks
towe(n,'a','b','c')