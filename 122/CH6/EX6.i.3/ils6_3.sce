// Illustration 6.3
// Effect of adding poles or zeros on the root locus of the system
// (section6-5). (fig 6-35)
// Interactive Program

// A MENU called "Add" will be added to the window 

clear; clc;
xdel(winsid());  //close all windows

// please set the path
// cd "/<your code directory>/"
// exec("rootl.sci");

function J = add(n,H)
  
  z = locate(1,1);
  x = z(1);y = z(2);
  N = H.num;
  D = H.den;
  if abs(y) <= 0.2 then    
    if n == 1 then  D = D * (s-x);
      else   N = N * (s-x);
    end
    zp = x;
   else
    if n == 1 then   D = D * (s^2 - 2*x*s + x^2 + y^2);
      else  N = N * (s^2 - 2*x*s + x^2 + y^2);
     end
    zp = x + %i * y; 
   end 
   J = syslin('c',N,D);
   draws(J);
   if(n == 1) then disp(zp,"p = "); else disp(zp,"z = ");end
   disp(J,"G = "); 
endfunction

function draws(P)
  delete(gca());
  rootl(P,[-5 -5; 5 5],'Root locus'); //you can change the range :[-20,-20;20,20];

endfunction

// Main Program
s = %s;
N = 1;
D = s * (s + 1) * (s + 3);
G = syslin('c',1,D);
H = G;

draws(G);
addmenu(0,'Add',['Pole','zero','Reset']);
Add_0 = ['H = add(1,H)','H = add(2,H);','draws(G);H=G;']; 

// place a zero close to the pole at -3
// first place it to the right then , to the left
// Then mover farther to the right.[-5 -5; 5 5]