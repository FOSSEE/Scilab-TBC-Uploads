// Illustration 6.1
// Finding the Gain K at any point on the root locus

clear; clc;
xdel(winsid());  //close all windows

// please set the path
// cd "/<your code directory>/"
// exec("rootl.sci");
// exec("gainat.sci");

function drawr()
  rootl(G,[-4 -4; 4 4],'Gain at an arbitary point on the root locus');
endfunction

s = %s;
G = syslin('c',1, s * (s + 1) * (s + 3) );
drawr();
addmenu(0,'Gain',['Select Point 5 points','clear']);
Gain_0 = ['for i = 1:5; gainat(G); end;','delete(gca());drawr();'];

// click on the Gain menu in the menu bar
// clear will restore your rootlocus
